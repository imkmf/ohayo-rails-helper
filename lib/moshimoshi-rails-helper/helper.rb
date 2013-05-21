module Rails
  module MoshimoshiRailsHelper
    module Helper
      def moshimoshi_tag(email, options = {})
        options[:error] ||= "This user has not yet established a bio at http://moshimoshi.me."

        require 'httparty'
        email_address = email.downcase
        hash = Digest::MD5.hexdigest(email_address)
        response = HTTParty.get("http://moshimoshi.me/api/users/show/#{ hash }")
        unless response.nil?
          return response.body
        else
          return options[:error]
        end
      end
    end
  end
end
