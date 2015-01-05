class User < ActiveRecord::Base
  enum role: [:user, :tasker, :admin]

   validates_presence_of :name, :last_name, :address, :phone, :cell_phone
  # #validates_presence_of :name, :last_name, :address, :phone, :cell_phone
  # after_initialize :set_default_role, :if => :new_record?

  # def set_default_role
  #   self.role ||= :user
  # end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
