# Internationalization for Fog via the R18n gem (https://github.com/ai/r18n)

gem 'r18n-desktop', '~> 1.1'
require 'r18n-desktop'

include R18n::Helpers
R18n.from_env(File.expand_path('i18n/locale', File.dirname(__FILE__)))
