class BillPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    show?
  end

  def show?
    true
  end

  def create?
    true
  end

end
