class App < ActiveRecord::Base
  belongs_to :user, :foreign_key => :user_id
  attr_accessible :name, :memory, :instances, :framework, :user_id
  validates_presence_of :name, :memory, :instances
  validates_uniqueness_of :name

end
