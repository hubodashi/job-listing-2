class User < ApplicationRecord
  has_many :resumes
  def admin?
    is_admin
  end
