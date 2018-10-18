require "stripe"
Stripe.api_key = EcommerceBookstore::Application.credentials.stripe[:secret_key]
