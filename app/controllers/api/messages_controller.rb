class API::MessagesController < ApplicationController
  def create
    Rails.logger.info "Received a message: #{params.inspect}"
    message = Messsage.create!(source_id: message_params[:sid], body: message_params[:body], from: message_params[:from])
    Interactions.initiate!(:request_vaccination, message)
  end

  private

  def message_params
    params.permit(:body, :from, :sid)
  end
end