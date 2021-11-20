module Api
    module V1
        class ReviewsController < ApplicationController

            def create
                review = Review.new(review_params)
                if review.save
                    render json: ReviewSerializer.new(review).serialized_json
                else
                    render json: { error: review.erros.massages }, status: 422
                end
            end

            def destroy
                review = Review.find(params [:id])
                if review.destroy
                    head :no_content
                else
                    render json: { error: review.erros.massages }, status: 422
                end
            end


            private

            def preview_params
                params.requere(:review).permit(:title, :description, :score, :airline_id)
            end
        end
    end
end