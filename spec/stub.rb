class OhayoRailsHelperStub
  include Rails::OhayoRailsHelper::Helper

  def ohayo_tag(email)
    require 'httparty'
    email_address = email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    response = HTTParty.get("http://ohayo.io/api/users/show/#{ hash }")
    return response.body
  end
end
