require 'spec_helper'

describe 'RubyEngine' do
  it 'should display the current ruby interpreter (to_s)' do
    RubyEngine.to_s.should == RUBY_ENGINE
  end
end
