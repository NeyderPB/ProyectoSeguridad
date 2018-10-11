class TareaMailer < ApplicationMailer

  def notify
   

    mail to: "to@example.org", subject: "Asunto de ejemplo"

  end
end
