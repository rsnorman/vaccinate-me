require_relative '../../lib/interactions'

Interactions.define do
  define :request_vaccination do
    listen :receive_text_message, CreateUser
    listen :create_user, InitiateVaccinateRequestInteraction
    listen :initiate_vaccinate_request_interaction, RequestUserFullName
    listen :receive_user_full_name, SaveUserFullName
    listen :save_user_name, RequestUserBirthDate
    listen :receive_user_birth_date, SaveUserBirthDate
    listen :save_user_birth_date, RequestUserZipcode
    listen :receive_user_zipcode, SaveUserZipcode
    listen :save_user_zipcode, SendEndVaccinateRequestMessage
    listen :send_end_vaccinate_request_message, EndVaccinateRequestInteraction
  end
end