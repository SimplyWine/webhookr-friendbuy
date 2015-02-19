$: << File.join(File.dirname(__FILE__), %w{ .. .. })
require 'test_helper'

describe Webhookr::Friendbuy do
  it "must be defined" do
    Webhookr::Friendbuy::VERSION.wont_be_nil
  end
end