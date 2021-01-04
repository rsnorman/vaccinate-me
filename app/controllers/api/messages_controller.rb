class API::MessagesController < API::APIController
  def create
    message = Message.create!(
      source_id: message_params['MessageSid'],
      body: message_params['Body'],
      from: message_params['From']
    )
    Interactions.initiate!(:request_vaccination, message)
  end

  private

  def message_params
    params.permit('Body', 'From', 'MessageSid')
  end
end