class UserInterestsController < ApplicationController
  def new
    @user_interest = UserInterest.new
  end
  
  def create
    @user_interest = user_interest.new(user_interest_params)

    respond_to do |format|
      if @user_interest.save
        format.html { redirect_to user_interest_url(@user_interest), notice: "Thanks for your interest our provider will contact you shortly." }
        format.json { render :show, status: :created, location: @user_interest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_interest.errors, status: :unprocessable_entity }
      end
    end
  end  

  private

  def user_interest_params
    params.require(:user_interest).permit(:email, :phone_number)
  end  
end
