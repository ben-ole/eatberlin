require_relative '../../test_helper'

describe Eat::Berlin do

  it "must be defined" do
    Eat::Berlin::VERSION.wont_be_nil
  end

end