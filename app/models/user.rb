class User < ApplicationRecord
  has_many :posts

  def dog
    "Fido"
  end
end
