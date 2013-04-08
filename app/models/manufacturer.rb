class Manufacturer < ActiveRecord::Base
  has_many :productlines
  has_many :materials, :through => :productlines
  attr_accessible :name
end