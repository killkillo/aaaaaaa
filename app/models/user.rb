class User
  include ActiveModel::SecurePassword
  include Mongoid::Document
  include Mongoid::Timestamps
  has_secure_password
  field :email, type: String
  field :password_digest, type: String
  validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "must be a valid email address"}


end
