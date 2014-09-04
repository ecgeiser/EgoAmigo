class NotificationsController < ApplicationController

  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(notification_params)

    if @notification.to_number
      @notification.text
      flash[:notice] = "Mensaje enviado. ¡Gracias, amigo!"
      redirect_to new_notification_path
    else
      redirect_to :new
    end
  end

  private
  def notification_params
    params.require(:notification).permit(:to_number)
  end

end