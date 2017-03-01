class User < ApplicationRecord

  mount_uploader :icon, ImageUploader

  validates :name, presence: true
  has_secure_password

  has_many :spaces











  # 渡された文字列のハッシュ値を返す

    def User.digest(string)
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end




end
