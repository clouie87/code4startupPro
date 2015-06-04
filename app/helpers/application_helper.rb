module ApplicationHelper
	def avatar_url(user)
		gravatar_id = Digest::MD5::hexdigest(user.email).downcase 
		"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=40"
		
	end
end
