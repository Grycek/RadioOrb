class Broadcast < ActiveRecord::Base
 validates_presence_of :name
 #has_many :presenters, :through => :presenters, :class_name => "User", :foreign_key => :broadcast_id
 has_many :presenters
 has_many :users, :through => :presenters
 has_many :broadcast_archives
end
