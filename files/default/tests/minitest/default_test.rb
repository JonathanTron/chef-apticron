require File.expand_path('../support/helpers', __FILE__)

describe 'apticron::default' do

  include Helpers::Apticron

  it "installs apticron package" do
    package("apticron").must_be_installed
  end

  it "installs apticron configuration file" do
    file("/etc/apticron/apticron.conf").must_exist.
      with(:owner, "root").
      and(:group, "root").
      and(:mode, "644")
  end

end
