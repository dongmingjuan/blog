class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    if user.admin?
        can :manage, :all
    elsif
        can :manage, Comment, user: user
        can :read, Post
    end
  end 

end
