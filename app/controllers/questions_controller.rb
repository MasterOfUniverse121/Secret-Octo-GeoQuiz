class QuestionsController < ApplicationController

  def index
    @questions = Question.all
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
		end
  end

  def show
    @question = Question.find_by(id: params[:id])
# 		@quiz = Quiz.find_by(id: params[:id])
# 		if @question.user_answer ==  @question.correct_answer
# 		@question.answered? == 'true'
# 		elsif @question.user_answer != @question.correct_answer
# 		@question.answered? == 'true'
# 		end
  end

  def new
		@quizzes = Quiz.all
		@authors = User.all
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
		end
  end

  def create
    @question = Question.new
    @question.quiz_id = params[:quiz_id]
    @question.query = params[:query]
    @question.correct_answer = params[:correct_answer]
    @question.user_answer = params[:user_answer]
    @question.author = params[:author]
    @question.wrong_answer_1 = params[:wrong_answer_1]
    @question.wrong_answer_2 = params[:wrong_answer_2]
    @question.wrong_answer_3 = params[:wrong_answer_3]
    @question.answered = params[:answered]

    if @question.save
			redirect_to "/show", :notice => "Question saved"
    else
			redirect_to '/new_question', :notice => @question.errors.full_messages.join(' ')
    end
  end

  def edit
    @question = Question.find_by(id: params[:id])
		@quizzes = Quiz.all
		@authors = User.all
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
		end
  end

  def update
    @question = Question.find_by(id: params[:id])
    @question.quiz_id = params[:quiz_id]
    @question.query = params[:query]
    @question.correct_answer = params[:correct_answer]
    @question.user_answer = params[:user_answer]
    @question.author = params[:author]
    @question.wrong_answer_1 = params[:wrong_answer_1]
    @question.wrong_answer_2 = params[:wrong_answer_2]
    @question.wrong_answer_3 = params[:wrong_answer_3]
    @question.answered = params[:answered]

    if @question.save
      redirect_to "/show", :notice => "Question saved"
    else
			redirect_to "/questions/#{ @question.id }/edit", :notice => @question.errors.full_messages.join(' ')
    end
  end

  def destroy
    @question = Question.find_by(id: params[:id])
    @question.destroy
		redirect_to "/", :notice => "Question deleted."
		if session['username'] != 'Tobe'
			redirect_to "/", :notice => "Deal with it."
		end
  end
	
	def grade
			@quiz = Quiz.find_by(id: params[:id])
		  @question = Question.find_by(id: params[:id])
		if @question.user_answer == @question.correct_answer
			@quiz.correct_questions + 1
		elsif @question.user_answer != @question.correct_answer
			@quiz.correct_questions + 0
		end
	end
end
