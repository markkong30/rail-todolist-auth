class User < ApplicationRecord
  validates :username, length: { minimum: 3, maximum: 64 }, presence: true
  validates :password, presence: true, length: { minimum: 8, maximum: 64 } 
  validates_uniqueness_of :username

  has_many :tasks
  has_many :sessions
   
end
