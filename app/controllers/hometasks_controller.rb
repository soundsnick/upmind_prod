class HometasksController < ApplicationController
  def index
    @title = text('hometask', 'title')
    @hometasks = current_user.hometasks
  end

  def hometask
    if user_signed_in?
      if @lesson = Lesson.find_by(id: params[:id])
        if @task = current_user.hometasks.find_by(lesson_id: @lesson.id)
        else @task = Hometask.new
        end
      else redirect_back fallback_location: hometasks_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  def hometask_send
    if @task = Hometask.find_by(id: params[:id])
      if @task.update_attributes(params.require(:hometask).permit(:file))
        redirect_to hometasks_path
      else
        redirect_back fallback_location: root_path, notice: 'Ошибка'
      end
    else
      redirect_back fallback_location: root_path, notice: 'Ошибка'
    end
  end

  def hometask_new
    tasks = Hometask.new(params.require(:hometask).permit(:lesson_id, :file))
    tasks.file = params[:hometask][:file]
    tasks.user_id = current_user.id
    if tasks.save
      redirect_to hometasks_path
    else
      redirect_back fallback_location: root_path, notice: 'Ошибка'
    end
  end
end
