class Productline < ActiveRecord::Base
  belongs_to :manufacturer
  has_many :materials
  attr_accessible :name, :manufacturer_id
end