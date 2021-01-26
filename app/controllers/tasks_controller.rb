class TasksController < ApplicationController

    def show 
        task = Task.find_by(params[:id])
        
        render json: task
    end
    
    def index 
        tasks = Task.all 

        render json: tasks
    end

    def create 

        task = Task.create(task_params)

        render json: task
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
        render json: task
    end
    
    def destroy
        task = Task.find(params[:id])

        task.destroy
    end

    private

    def task_params
        params.require(:task).permit(:name, :time, :project_id)
    end
end
