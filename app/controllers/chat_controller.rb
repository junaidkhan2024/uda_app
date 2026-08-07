class ChatController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [ :create ]
  def create
    answer = RagAnswerService.call(params[:message])
    render json: { answer: answer.content }
  end
end
