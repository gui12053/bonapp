# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def contact_form(email, name, message)
    UserMailer.contact_form("jean@exemple.com", "Jean", "Hallo Welt!")
  end
end
