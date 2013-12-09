class GroupsController < ApplicationController
  
  
  def search
    text = params[:search]
    @group = Group.find(:first, :conditions => "name like '%#{text}%'")
    @product = @group.products[0]
  end
  
end
