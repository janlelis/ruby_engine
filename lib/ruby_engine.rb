# frozen_string_literal: true

module RubyEngine
  VERSION = '2.0.3'

  @interpreter = RUBY_ENGINE.to_s

  class << self
    def is?(what)
      what === @interpreter
    end
    alias is is?

    def to_s
      @interpreter.to_s
    end
    alias inspect to_s

    def mri?
      RubyEngine.is? 'ruby'
    end
    alias official_ruby? mri?
    alias ruby? mri?
    alias cruby? mri?

    def jruby?
      RubyEngine.is? 'jruby'
    end
    alias java? jruby?

    def rubinius?
      RubyEngine.is? 'rbx'
    end
    alias rbx? rubinius?

    def truffleruby?
      RubyEngine.is? 'truffleruby'
    end
    alias truffle? truffleruby?
  end
end

