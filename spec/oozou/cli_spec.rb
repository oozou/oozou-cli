require 'spec_helper'

describe Oozou::CLI do
  it 'has a version number' do
    expect(Oozou::CLI::VERSION).not_to be nil
  end
end
