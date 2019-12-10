class UsersController < ApplicationController
   enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end
  
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
  
  def create
  end
  
  def destroy
  end
  
  def update
  end
  
end
