require 'spec_helper'

describe User do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }

  it "by default isn't admin" do
    expect(User.new).to_not be_admin
  end
end
