# == Schema Information
#
# Table name: houses
#
#  id            :bigint           not null, primary key
#  house_address :string           not null
#

class House < ApplicationRecord
  validates :house_address, presence: true
  
  has_many :person, 
    primary_key: :id, 
    foreign_key: :house_id,
    class_name: :Person
end
