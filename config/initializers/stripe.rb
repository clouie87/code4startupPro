Rails.configuration.stripe = {
  :publishable_key => 'pk_test_BZBMq0VqcQf4uyEx1vOl27Bj',
  :secret_key      => 'sk_test_h1PBh3ymOC4fgtjUuZ1z6NhR'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
