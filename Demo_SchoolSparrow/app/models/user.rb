class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :users_roles
  has_many :roles, through: :users_roles

  after_create :set_default_role

  private
  def set_default_role
    @users = User.last
    @role = Role.where(name: 'Prospect').first
    UsersRole.create(	roles_id: @role.id,
                         users_id: @users.id
    )
  end

  def is_admin?
    return type == 'Admin'
  end

end
