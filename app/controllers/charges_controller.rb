class ChargesController < ApplicationController
	def new
	end

	def create
		#amount in cents
		@amount = 2500
		customer = Stripe::Customer.create(
			:email => 'customer@ben.customer',
			:card => params[:stripeToken]
		)

		charge = Stripe::Charege.create(
			:customer		 	=> customer.id,
			:amount				=> @amount,
			:desctiption	=> 'Ben\'s 3D Printer Monitor',
			:currency			=> 'usd'
		)

	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to charges_path
	end

end
