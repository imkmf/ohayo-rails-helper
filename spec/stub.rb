class MoshimoshiRailsHelperStub
  include Rails::MoshimoshiRailsHelper::Helper

  def moshimoshi_tag(email)
    require 'httparty'
    email_address = email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    response = HTTParty.get("http://moshimoshi.me/api/users/show/#{ hash }")
    return response.body
  end
end
