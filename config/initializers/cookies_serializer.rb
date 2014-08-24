# Be sure to restart your server when you modify this file.

# chttps://github.com/plataformatec/devise/issues/2949
# Devise seem have some pain with serialization and deserialiszation from new JSON format
  # lib/devise/models/authenticatable.rb
  # def serialize_into_session(record)
  # def serialize_from_session(key, salt)
# Need ti clean cookie chrome://settings/cookies
# Rails.application.config.action_dispatch.cookies_serializer = :hybrid
