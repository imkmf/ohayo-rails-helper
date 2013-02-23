require 'spec_helper'

describe Rails::OhayoRailsHelper::Helper do
  before do
    @stub = OhayoRailsHelperStub.new
  end

  it "should return a greeting" do
    email = "kristian@kristianfreeman.com"
    @stub.ohayo_tag(email).should == "Foo"
  end
end
