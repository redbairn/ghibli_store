class UsersController < ApplicationController
  before_create :set_default_role
  # or 
  # before_validation :set_default_role 

  private
  def set_default_role
    self.role ||= Role.find_by_name('user')
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
