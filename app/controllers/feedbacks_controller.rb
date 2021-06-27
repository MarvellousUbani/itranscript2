class FeedbacksController < ApplicationController
    before_action :authenticate_user!, only: %i[new create index]

    def create
        @feedback = Feedback.new(feedbacks_params)
        if @feedback.save
          redirect_back(fallback_location: root_path, notice: 'Your feedback was sent')
        end
    end

    private
    def feedbacks_params
        params.require(:feedback).permit(:user_id, :content)
    end
end
