class User < ApplicationRecord
  has_many :questions

  devise :database_authenticatable, :registerable
end
