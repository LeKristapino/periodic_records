$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'active_record'
require 'active_support/all'

require 'periodic_records'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

load File.dirname(__FILE__) + '/schema.rb'
require File.dirname(__FILE__) + '/models.rb'
