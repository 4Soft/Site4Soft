module ApplicationHelper
  def is_error_message?(message)
    message == "Houve um erro no envio. Por favor, verifique seus dados e tente novamente."
  end

  def is_success_message?(message)
    message == "Mensagem enviada com sucesso!"
  end

  def message_icon_for(message)
    if is_success_message?(message)
      raw '<span class="ui-icon ui-icon-circle-check" style="float: left; margin: 0 7px 50px 0;"></span>'
    elsif is_error_message?(message)
      raw '<span class="ui-icon ui-icon-circle-close" style="float: left; margin: 0 7px 50px 0;"></span>'
    else
      raw '<span class="ui-icon ui-icon-info" style="float: left; margin: 0 7px 50px 0;"></span>'
    end
  end
end
