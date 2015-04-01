class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
    @vote.user = current_user
    @vote.save
    respond_to do |format|
      format.html { redirect_to question_path(@vote.response.question) }
      format.js do
        @responses = @vote.response.question.responses
      end
    end
    # alternate method:
    # response = Response.find(vote_params[:response_id])
    # Vote.create(user_id: user.id, response_id: response.id)
    # redirect_to question_path(response.question)
  end
private
  def vote_params
    params.require(:vote).permit(:response_id)
  end

end
