# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string
#  password_digest :string
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password        :integer
#

class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :password_digest, presence: {message: "password can\'t be blank"}
  
end
