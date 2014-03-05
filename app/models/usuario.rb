class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #attr_accessible :username, :email, :password, :password_confirmation, :remember_me
  #attr_accessor :login

  validates :username, :uniqueness => { :case_sensitive => false }, :unless => Proc.new { |usuario| usuario.username.blank? }
  validates_presence_of :username
end
