class ReviewsController < ApplicationController

	def create
		@review = Review.create(review_params)
		project = @review.project

		redirect_to project
	end

	def destroy
		@review = Review.find(params[:id])
		project = @review.project
		@review.destroy

		redirect_to project	
	end

	private
		def review_params
			params.require(:review).permit(:star, :comment, :project_id, :user_id)
		end


end

