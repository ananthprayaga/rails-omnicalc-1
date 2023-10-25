class CalculatorController < ApplicationController
  def square
    render({:template => "calculator/square_form"})
  end

  def square_results
    @number = params.fetch("number").to_f
    @square_results = @number * @number
    render({:template => "calculator/square_results"})
  end

  def square_root
    render({:template => "calculator/square_root"})
  end

  def square_root_results
    @user_number = params.fetch("user_number").to_i
    user_number = params.fetch("user_number").to_f
    @square_root_results = user_number ** (0.5)
    render({:template => "calculator/square_root_results"})
  end

  def random
    render({:template => "calculator/random"})
  end

  def random_results
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @random_results = rand(@user_min..@user_max)
    render({:template => "calculator/random_results"})
  end

  def payment
    render({:template => "calculator/payment"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @r = @apr / (100 * 12)
    @years = params.fetch("user_years").to_i
    @n = @years * 12
    @principal = params.fetch("user_pv").to_f
    @pv = @principal
    @payment = (@r * @pv) / (1 - ((1 + @r) ** -(@n)))
    render({:template => "calculator/payment_results"})
  end

end
