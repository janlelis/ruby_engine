# RubyEngine [<img src="https://badge.fury.io/rb/ruby_engine.svg" alt="Gem Version" />](https://badge.fury.io/rb/ruby_engine) [<img src="https://github.com/janlelis/ruby_engine/workflows/Test/badge.svg" />](https://github.com/janlelis/ruby_engine/actions?query=workflow%3ATest)

Provides a `RubyEngine` constant for simple Ruby implementation checks.

## Setup

On your command-line:

    $ gem install ruby_engine

In Ruby:

    require 'ruby_engine'

## Usage

    # Output the interpreter name
    RubyEngine.to_s

    # true for JRuby
    RubyEngine.is? 'jruby'

    # There are some query methods defined:
    RubyEngine.cruby?
    RubyEngine.jruby?
    RubyEngine.truffle?

## Also See

- https://github.com/janlelis/ruby_version
- https://github.com/janlelis/ruby_info
- https://github.com/rdp/os
- https://github.com/janlelis/irbtools

## J-_-L

Copyright (c) 2010-2014, 2020 Jan Lelis. MIT License. Originated from the
zucker gem.
