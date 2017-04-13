class User < ApplicationRecord
  def admin?
    email == 'hubodashi@aliyun.com'
  end
