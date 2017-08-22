# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  username :string
#

class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true 

end
