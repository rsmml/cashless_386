class BillPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def show?
    true or BillPolicy.new(user, Bill.find(bill_id)).show?
  end

  def update?
    record.user == user
  end


end
