class Admin::ProjectsController < ApplicationController
	before_action :authenticate_user!

	def index
		@projects = Project.all
	end

	def show	
	end

	def new
		@project = Project.new
	end

	def edit
		@project = Project.friendly.find(params[:id])
	end

	def update
		current_project.update_attributes(project_params)
		flash[:notice] = 'Updated!'
		redirect_to edit_admin_project_path(current_project)
	end

	def create
		@project = Project.create(project_params)
	end

	def destroy
	end

	private

	def current_project
		@current_project ||= Project.friendly.find(params[:id])
	end

	def project_params
		params.require(:project).permit(:title, :overview, :details)
	end
end
