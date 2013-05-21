require 'spec_helper'

describe Rails::MoshimoshiRailsHelper::Helper do
  before do
    @stub = MoshimoshiRailsHelperStub.new
  end

  it "should return a greeting" do
    email = "kristian@kristianfreeman.com"
    @stub.moshimoshi_tag(email).should == "Foo"
  end
end
