class MultipleController < ApplicationController
  def index
    if @multiple = Multiple.find_by(lesson_id: params[:lesson_id])
    else
      redirect_to root_path, notice: "Не найдено"
    end
  end

  def post_answer
    if current_user and params[:multiple] and @multiple = Multiple.find_by(id: params[:multiple])
      ans = params[:answers].values
      @notice = "Ответы сохранены"
      ans.each_with_index do |a, i|
        if UserChoice.where(user_id: current_user, multiple_question_id: params[:answers].keys[i]).empty?
          @c = UserChoice.new
          @c.multiple_answer_id = a
          @c.multiple_question_id = params[:answers].keys[i]
          @c.user_id = current_user.id
          @c.save
        else
          @notice = "Ошибка доступа. Вы можете сдать только один раз"
          break
        end
      end
      @correct = UserChoice.where(user_id: current_user, multiple_question_id: @multiple.multiple_questions, multiple_answer_id: MultipleAnswer.where(correct: true, multiple_question_id: @multiple.multiple_questions)).count
      @correct_pct = (@correct.to_d / @multiple.multiple_questions.count.to_d) * 100
      @res = (MultipleResult.find_by(user_id: current_user.id, multiple_id: @multiple.id)) ? MultipleResult.find_by(user_id: current_user.id, multiple_id: @multiple.id) : MultipleResult.new
      @res.user_id = current_user.id
      @res.multiple_id = @multiple.id
      @res.result = @correct_pct
      @res.save
      redirect_to multiple_path(@multiple.lesson.id), notice: @notice
    else
      redirect_to root_path
    end
  end
end
