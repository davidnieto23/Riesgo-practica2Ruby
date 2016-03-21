class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #has_many :creados, :class_name=> 'Post'
  #has_many :postulaciones, :class_name=> 'Post'
 

  has_many :posts #solicitudes de sangre
  #belongs_to :posts #postulaciones para donar
  belongs_to :donacion, :class_name => 'Post'
  #has_one :post
end 