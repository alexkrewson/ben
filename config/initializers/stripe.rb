Rails.configuration.stripe = {
    :publishable_key => 'pk_test_4rlPZvxZnAVWYvZfS1LbzdO600F5XJOzX2',
    :secret_key => 'sk_test_pKJHOBqwk1DMSYNLbqSRLOKl00Uxhm8c52'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]