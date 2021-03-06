class ProjectPolicy < ApplicationPolicy
  # class Scope < Struct.new(:user, :scope)
  #   def resolve
  #     scope
  #   end
  # end

  def new?
    user
  end

  def create?
    user
  end

  def edit?
    @user == @record.user
  end

  def update?
    @user == @record.user
  end

  def destroy?
    @user == @record.user
  end

  def new_permitted_attrs
    [:name, :description, :portfolio, :image_url, :folio, :executor, :authorization_number, :contract_number, :economy, :expected_amount, :authorized_amount, :work_number, :zona, :ejecutor, :acta_entrega, :location, :company, :contact, :start_at, :end_at, :goal, :unit, :contract_modified, :physical_advance, :financial_advance, :status, :delay, :observations]
  end

  def edit_permitted_attrs
    [:name, :description, :portfolio, :image_url, :folio, :executor, :authorization_number, :contract_number, :economy, :expected_amount, :authorized_amount, :work_number, :zona, :ejecutor, :acta_entrega, :location, :company, :contact, :start_at, :end_at, :goal, :unit, :contract_modified, :physical_advance, :financial_advance, :status, :delay, :observations]
  end
end
