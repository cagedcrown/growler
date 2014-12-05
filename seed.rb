require 'pg'
require 'active_record'
#require 'pry'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  database: 'growler'
)

class User < ActiveRecord::Base
	has_many :posts 
end 

class Growl < ActiveRecord::Base
	belongs_to :user
	has_many :taggings
	has_many :tags, through: :taggings
end


#binding.pry