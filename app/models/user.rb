class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments
  has_and_belongs_to_many :courses
  has_many :hometasks
  has_many :student_questions
  has_many :feedbacks
  has_many :user_choices
  has_many :multiple_result
end
