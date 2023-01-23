class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many:post_images,dependent: :destroy
  #user側がpost_imagesをhas manyである。userが削除されると追随してpost_imagesもdestroyされる
end
