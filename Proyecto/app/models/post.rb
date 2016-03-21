class Post < ActiveRecord::Base
 belongs_to :usuario
 # belongs_to :creator , :class_name=>'Usuario' 
  #has_one :applicant ,  :class_name=>'Usuario', :foreign_key => 'applicant_id'

#  belongs_to :creador ,:class_name=>'Usuario' 
#  has_many :postulados ,:class_name=>'Usuario'

has_one :candidato , :class_name => 'Usuario'
end
