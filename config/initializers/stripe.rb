if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_MOWAOdkAz0nF6uT3Ndcaevje00DEgYRFpl',
    secret_key: 'sk_test_Qf9vd033GzyXk6zN7mnqIHnM000SXAAfDH'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
