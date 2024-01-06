class PodcastPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    
    def new?
      user.admin?
    end

    def create?
      user.admin? # Allow only admins to create podcasts
    end

    def update?
      user.admin? # Allow only admins to update podcasts
    end

    def edit?
      update? # For simplicity, use the same condition as update
    end

    def destroy?
      user.admin? # Allow only admins to delete podcasts
    end

    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end
  end
end
