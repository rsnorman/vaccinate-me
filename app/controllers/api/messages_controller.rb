class API::MessagesController < ApplicationController
  def create
    Rails.logger.info "Received a message: #{params.inspect}"
  end
end