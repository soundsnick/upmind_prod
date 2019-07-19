class CoursesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @courses = get_language.courses.all
    @title = text('courses', 'courses_all')

  end

  def course
    if user_signed_in?
      if @course = Course.find_by(id: params[:id])
        unless current_user.courses.find_by(id: params[:id])
          redirect_to course_landing_path(@course.id, @course.title)
        end
        @title = @course.title
      else redirect_to courses_path
      end
    else
      if @course = Course.find_by(id: params[:id])
        redirect_to course_landing_path(@course)
      else redirect_to courses_path
      end
    end
  end

  def landing
    if @course = Course.find_by(id: params[:id])
      @title = @course.title
    else redirect_to courses_path
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

  def buy
    if @buy = Buy.new(params.permit(:name, :phone, :course_id)).save
      redirect_to course_landing_path(params[:course_id], Course.find_by(id: params[:course_id]).title), notice: text('course-landing', 'call')
    else
      redirect_to course_landing_path(params[:course_id], @buy.title), notice: 'Ошибка'
    end
  end

  def question_new
    if user_signed_in?
      @comment = StudentQuestion.new(params.require(:student_question).permit(:lesson_id, :question))
      @comment.user_id = current_user.id
      if @comment.save
        redirect_to questions_path
      else
        redirect_to lesson_path(params[:student_question][:lesson_id]), notice: 'Ошибка'
      end
    else
      redirect_to new_user_session_path
    end
  end

  def feedback_new
    if user_signed_in?
      @comment = Feedback.new(params.require(:feedback).permit(:lesson_id, :first_question, :second_question, :third_question))
      @comment.user_id = current_user.id
      if @comment.save
        redirect_to lesson_path(params[:feedback][:lesson_id]), notice: 'Success'
      else
        redirect_to lesson_path(params[:feedback][:lesson_id]), notice: 'Ошибка'
      end
    else
      redirect_to new_user_session_path
    end
  end

  def questions
    @title = text('questions', 'title')
    @questions = current_user.student_questions
  end

end
