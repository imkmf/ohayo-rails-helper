require 'spec_helper'

describe Rails::MoshimoshiRailsHelper::Helper do
  before do
    @stub = MoshimoshiRailsHelperStub.new
  end

  it "should return a greeting" do
    email = "foo@bar.org"
    @stub.moshimoshi_tag(email).should == "I'm foobar: I was used to test the API for this site and now I have to hang out by myself. Sad day. "
  end
end
