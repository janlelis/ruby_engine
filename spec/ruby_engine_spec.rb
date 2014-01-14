require 'spec_helper'

describe 'RubyEngine' do
  before :all do
    RubyEngine.instance_variable_set(:@interpreter, "jruby")
  end

  it 'should display RUBY_ENGINE if called directly (to_s)' do
    RubyEngine.to_s.should == 'jruby'
  end

  describe '.is?' do
    it 'returns true if current ruby engine matches' do
      RubyEngine.is?('jruby').should == true
    end

    it 'returns false if current ruby engine does not match' do
      RubyEngine.is?('maglev').should == false
    end

    it 'also supports regex' do
      RubyEngine.is?(/ruby/).should == true
    end
  end
end
