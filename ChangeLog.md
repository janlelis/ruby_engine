# Change Log

## 2.0.3 / 2024-04-22

* Drop rubygems-tasks dependency, fixes a Ruby 2.5 install problem

## 2.0.2 / 2024-04-22

* Upgrade RSpec to latest, remove Gemfile workaround

## 2.0.1 / 2024-04-02

* Add MFA to gemspec
* Update CI

## 2.0.0 / 2020-01-04

* Refactor / update for current Rubies
  * Remove cardinal
  * Remove ree
  * Remove ironruby
  * Add truffelruby
  * Add `cruby?` alias to MRI

## 1.0.1 / 2014-01-15

* Fix RubyEngine.mri?
* Fix VERSION constant

## 1.0.0 / 2014-01-14

* Return "ruby" for MRI (instead of "mri")
* Return "unknown" if RUBY_ENGINE is not set (instead of "mri")
* Moved from zucker 13.1 gem into its own gem

