class CoursesController < ApplicationController
  def index
    @courses = get_language.courses.all
    @title = text('courses', 'courses_all')

  end

  def course
    if user_signed_in?
      if @course = Course.find_by(id: params[:id])
        unless current_user.courses.find_by(id: params[:id])
          redirect_to courses_path, notice: text('common', 'course_not_bought')
        end
        @title = @course.title
      else redirect_to courses_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  def lesson
    if user_signed_in?
      if @lesson = Lesson.find_by(id: params[:id])
        unless current_user.courses.find_by(id: @lesson.course.id)
          redirect_to courses_path, notice: text('common', 'course_not_bought')
        end
        @title = @lesson.title
      else redirect_back fallback_location: courses_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  def comment_new
    if user_signed_in?
      @comment = Comment.new(params.require(:comment).permit(:lesson_id, :text))
      @comment.user_id = current_user.id
      if @comment.save
        redirect_to lesson_path(params[:comment][:lesson_id])
      else
        redirect_to lesson_path(params[:comment][:lesson_id]), notice: 'Ошибка'
      end
    else
      redirect_to new_user_session_path
    end
  end

end
