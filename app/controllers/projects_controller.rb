class ProjectsController < ApplicationController


    def show
        project = Project.find_by(params[:id])

        render json: project
    end

    def index
        projects = Project.all

        render json: projects, include: :tasks, except: [:created_at, :updated_at]
    end

    def create

        project = Project.create(project_params)


        render json: project

    end

    def update
        project = Project.find(params[:id])

        project.update(project_params)

        render json: project
    end

    def destroy
        project = Project.find(params[:id])
        
        project.destroy

        render json: project
    end

    private 

    def project_params 
        params.require(:project).permit(:name, :time, :importance, :task)
    end
end
