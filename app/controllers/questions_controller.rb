class QuestionsController < ApplicationController
  def index
  end

  def ask
  end

  def answer
    @question = ""

    if params[:question] == "I am going to work"
      @question = "Great! 💯"
    elsif params[:question].end_with?('?')
      @question = 'Silly question, get dressed and go to work!'
    else
      @question = "I don't care, get dressed and go to work!"
    end
  end
end
