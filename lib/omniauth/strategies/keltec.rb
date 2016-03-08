require 'omniauth-oauth2'
module OmniAuth
  module Strategies
    class Keltec < OmniAuth::Strategies::OAuth2
      option :name, :keltec

      option :client_options, {
        site: 'https://accounts.keltec.ch',
        port: 443,
        authorize_url: '/oauth/authorize'
      }

      uid { raw_info['id'] }

      info do
        {
          email: raw_info['email'],
          lastname: raw_info['lastname'],
          firstname: raw_info['firstname'],
          date_of_birth: raw_info['date_of_birth'],
          image_url: raw_info['image_url']
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
