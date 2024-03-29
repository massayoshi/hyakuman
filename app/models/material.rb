class Material < ActiveRecord::Base
  belongs_to :productline
  belongs_to :manufacturer#, :through => :productline
  attr_accessible :image, :name, :productline_id, :manufacturer_id
  validates_presence_of :productline_id, :manufacturer_id
end