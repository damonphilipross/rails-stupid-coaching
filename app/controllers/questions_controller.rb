class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # @answers = ["coffe", "eggs", "puppies"]
    @question = params[:question]
    @coach_answer = question_method(@question)
  end

  def question_method(string)
    if string.include?('?')
      'Silly question, get dressed and go to work!'
    elsif string == 'I am going to work'
      'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
