class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true or UserPolicy.new(user, User.find(user_id)).show?
  end
end
