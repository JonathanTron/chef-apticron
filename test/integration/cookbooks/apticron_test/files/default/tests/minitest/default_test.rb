require File.expand_path('../support/helpers', __FILE__)

describe 'apticron_test::default' do

  include Helpers::ApticronTest

  describe "configuration" do
    subject{ file("/etc/apticron/apticron.conf") }

    it "has custom EMAIL" do
      subject.must_include 'EMAIL="root admin@localhost"'
    end

    it "has custom DIFF_ONLY" do
      subject.must_include 'DIFF_ONLY="1"'
    end

    it "has custom LISTCHANGES_PROFILE" do
      subject.must_include 'LISTCHANGES_PROFILE="apticron"'
    end

    it "has custom SYSTEM" do
      subject.must_include 'SYSTEM="test.example.dev"'
    end

    it "has custom IPADDRESSNUM" do
      subject.must_include 'IPADDRESSNUM="2"'
    end

    it "has custom NOTIFY_HOLDS" do
      subject.must_include 'NOTIFY_HOLDS="0"'
    end

    it "has custom NOTIFY_NEW" do
      subject.must_include 'NOTIFY_NEW="0"'
    end

    it "has custom CUSTOM_SUBJECT" do
      subject.must_include "CUSTOM_SUBJECT='[security updates] $SYSTEM: $NUM_PACKAGES package update(s)'"
    end

    it "has custom CUSTOM_FROM" do
      subject.must_include 'CUSTOM_FROM="sec@test.example.dev"'
    end

  end

end
