class User < ApplicationRecord
  before_save {self.email =email.downcase}
  has_many :articles

  validates :username, presence: true, length: {minimum:3,maximum:25},uniqueness: {case_sensitive: false}
  validates :email, presence: true, length: {maximum:105},uniqueness: {case_sensitive: false},format:{
    with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  }

end
