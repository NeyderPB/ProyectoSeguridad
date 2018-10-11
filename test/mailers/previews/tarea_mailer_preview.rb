# Preview all emails at http://localhost:3000/rails/mailers/tarea_mailer
class TareaMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/tarea_mailer/notify
  def notify
    TareaMailer.notify
  end

end
