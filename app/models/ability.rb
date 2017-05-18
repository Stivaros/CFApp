class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    alias_action :create, :update, :destroy, to: :cud
    alias_action :create, :update, to: :cu

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :manage, User, id: user.id
      can :create, Comment
      can :cu, Order, user_id: user.id
      cannot :cud, Product
    end
  end
end
