class UserTicketsController < ApplicationController
  def index
    @user_tickets = UserTicket.all
  end

  def show
    @user_ticket = UserTicket.find(params[:id])
  end

  def new
    @user_ticket = UserTicket.new
  end

  def create
    user_ticket = UserTicket.create(event_params)

    redirect_to events_path
  end

  def edit
    @user_ticket = UserTicket.find(params[:id])
  end

  def update
    @user_ticket = UserTicket.find(params[:id])
    @user_ticket.update(user_ticket_params)

    redirect_to event_path(@user_ticket)
  end

  def destroy
    @user_ticket = UserTicket.find(params[:id])
    @user_ticket.destroy

    redirect_to events_path
  end


  private

  def user_ticket_params
    params.require(:user_ticket).permit(:user_id, :ticket_id, :time, :paid)
  end
end