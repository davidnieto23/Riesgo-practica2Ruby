class Post < ActiveRecord::Base
  belongs_to :creador ,:class_name=>'Usuario' 
  has_many :postulados ,:class_name=>'Usuario'
end
