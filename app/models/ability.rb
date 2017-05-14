class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    alias_action :create, :update, :destroy, to: :cud

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :manage, User, id: user.id
      can :create, Comment
      cannot :cud, Product
      cannot :destroy, Order
    end
  end
end
