class RolesController < ApplicationController
  def new
  	@role = Role.new
  end

  def create
  	@role = Role.new(name: params[:role][:name], status: 'active');
  	if @role.save
  		flash[:notice] = "Role has been added successfully!"
  		redirect_to new_role_path
  	else
  		render :new
  	end

  end

  def edit_roles
    @roles = Role.active_roles
  end

  def update_roles
    @roles = Role.active_roles

    role_ids = params[:role]
    # raise params[:role].inspect
    # raise role_ids.inspect
    # roles = Role.find_all_by_id(role_ids).update_all(status: 'inactive')
    # puts roles
    # puts "*************\n\n"
    # if roles
    #   redirect_to root_path
    # else
    #   render :edit_roles
    # end

    role_ids.each do |role_id|
      role = Role.find(role_id)
      role.update_attributes(status: 'inactive')
      role.save!
    end
    flash[:notice] = "selected Roles has been hidden"
    redirect_to root_path
  rescue Exception => e
    render :edit_roles
  end

  def edit
  end

  def update
  end
end
