class RequestUserFullName
  def initialize(message)
    @message = message
  end

  def execute
    require 'twilio-ruby'

    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token = ENV['TWILIO_AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = ENV['TWILIO_PHONE_NUMBER']
    to = @message.from

    client.messages.create(
      from: from,
      to: to,
      body: 'Great to hear you want to get vaccinated! Let\'s collect some information so we can contact you when ready? What is your full name?'
    )
  end
end