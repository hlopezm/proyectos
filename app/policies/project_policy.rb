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
    [:name, :description, :portfolio, :image_url, :folio, :authorization_number, :expected_amount, :authorized_amount, :work_number, :location, :executor, :start_at, :end_at]
  end

  def edit_permitted_attrs
    [:name, :description, :portfolio, :image_url, :folio, :authorization_number, :expected_amount, :authorized_amount, :work_number, :location, :executor, :start_at, :end_at]
  end
end
