require 'omniauth-oauth2'
module OmniAuth
  module Strategies
    class Keltec < OmniAuth::Strategies::OAuth2
      option :name, :keltec

      option :client_options, {
        :site => "http://accounts.m8proj.citrin.ch",
        #:port => 443,
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
