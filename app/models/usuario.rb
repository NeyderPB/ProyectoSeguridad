class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :tareas
  has_many :comentarios
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
 