class MessagesController < ApplicationController
  def create
    @message = Message.new (params[:message])

    if @message.save 
      flash[:info] = "Mensagem enviada com sucesso!"
      SendMessageTo4Soft.send_message_to_gmail_group(@message).deliver

      redirect_to root_path
    else
      flash[:info] = "Houve um erro no envio. Por favor, verifique seus dados e tente novamente."

      redirect_to root_path
    end
  end
end
