class VolunteersController < ApplicationController

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
      redirect_to volunteer_path(@volunteer)
    else
       flash[:error] = @volunteer.errors.full_messages.first if @volunteer.errors.any?
       redirect_to new_volunteer_path

    end
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def index
    @volunteers = Volunteer.all
  end

private

def volunteer_params
  params.require(:volunteer).permit(
    :first_name,
    :last_name,
    :middle_initial,
    :birth_year,
    :birth_month,
    :birth_day,
    :political_interest,
    :email_address
  )
end

end
