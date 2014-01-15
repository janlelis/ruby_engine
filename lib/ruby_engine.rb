module RubyEngine
  VERSION = '1.0.1'

  @interpreter = case
    when RUBY_PLATFORM == 'parrot'
      'cardinal'
    when Object.const_defined?(:RUBY_ENGINE)
      if RUBY_ENGINE == 'ruby'
        if RUBY_DESCRIPTION =~ /Enterprise/
          'ree'
        else
          'ruby'
        end
      else
        RUBY_ENGINE.to_s # jruby, rbx, ironruby, macruby, etc.
      end
    else
      'unknown'
    end

  class << self
    def is?(what)
      what === @interpreter
    end
    alias is is?

    def to_s
      @interpreter.to_s
    end
    alias inspect to_s

    # ask methods

    def mri?
      RubyEngine.is? 'ruby'
    end
    alias official_ruby? mri?
    alias ruby? mri?

    def jruby?
      RubyEngine.is? 'jruby'
    end
    alias java? jruby?

    def rubinius?
      RubyEngine.is? 'rbx'
    end
    alias rbx? rubinius?

    def ree?
      RubyEngine.is? 'ree'
    end
    alias enterprise? ree?

    def ironruby?
      RubyEngine.is? 'ironruby'
    end
    alias iron_ruby? ironruby?

    def cardinal?
      RubyEngine.is? 'cardinal'
    end
    alias parrot? cardinal?
    alias perl? cardinal?
  end
end

# J-_-L
