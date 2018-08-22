class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  belongs_to :wedding

  has_many :payable_expenses, through: :wedding, foreign_key: :payable_by_id, source: :expenses

  def overview

  end
end
