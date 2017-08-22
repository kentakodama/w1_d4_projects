# == Schema Information
#
# Table name: users
#
#  id    :integer          not null, primary key
#  name  :string
#  email :string
#



class User < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true 

end
