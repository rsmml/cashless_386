class CardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end
  # def show?
  #   record.user == user
  # end

  def new?
    true
  end

  def create?
    record.user == user
  end

  # def update?
  #   user
  # end

  # def destroy?
  #   record.user == user
  # end
end
