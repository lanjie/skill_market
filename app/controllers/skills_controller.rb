class SkillsController < ApplicationController

	before_action :set_worker



	def search

		if params[:search].present?
			@skills = Skill.reindex.search(params[:search])
		else
			@skills = Skill.all
		end
	end
	
	def create		
		@skill = @worker.skills.create(skill_param)

		redirect_to @worker
	end

	def destroy
		@skill = @worker.skills.find(params[:id])
		if @skill.destroy
			flash[:success] = "Skill has been deleted."
		else
			flash[:error] = "Skill cannot be deleted."
		end

		redirect_to @worker
	end

	private

	def set_worker
		@worker = Worker.find(params[:worker_id])
	end

	def skill_param
		params[:skill].permit(:name)
	end
end
