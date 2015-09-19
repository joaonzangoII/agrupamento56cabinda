class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attachment  :avatar, accept: [:jpg, :png, :gif]
  has_attachments :photos, maximum: 10

  validates :avatar, presence: true
end
