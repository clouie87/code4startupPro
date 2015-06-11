module ApplicationHelper
	def avatar_url(user)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase 

		if user.image
			user.image
		else
			"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=50"
		end
	end

	class CodeRayify < Redcarpet::Render::HTML
		def block_code(code, language)
			CodeRay.scan(code, language).div(:line_numbers => :table)
		end
	end

	def markdown(text)
		coderayified = CodeRayify.new(:filter_html => true, :hard_wrap => true)
		options = {
			:fenced_code_blocks => true,
			:no_intra_emphasis => true,
			:autolink => true, 
			:strikethrough => true, 
			:lax_html_blocks => true, 
			:superscript => true
		}

		markdown_to_html = Redcarpet::Markdown.new(coderayified, options)
		markdown_to_html.render(text).html_safe
	end
end
