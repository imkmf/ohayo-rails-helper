module Rails
  module OhayoRailsHelper
    module Helper
      def ohayo_tag(email, options = {})
        options[:error] ||= "This user has not yet established a bio at http://ohayo.io."

        require 'httparty'
        email_address = email.downcase
        hash = Digest::MD5.hexdigest(email_address)
        response = HTTParty.get("http://ohayo.io/api/users/show/#{ hash }")
        unless response.nil?
          return response.body
        else
          return options[:error]
        end
      end
    end
  end
end
