class Tarea < ApplicationRecord
	belongs_to :usuario
	has_many :comentarios, :dependent => :destroy
	validates :titulo, presence: true
	validates :descripcion, presence: true
end
