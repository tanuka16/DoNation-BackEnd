# require 'stripe'
class DonationsController < ApplicationController
  def index
    @donations = Donation.all
    render json: @donations
  end
  def create

    Stripe.api_key='sk_test_XWKFjk2v8sAjh04L9IQQfnkr00yDe85TAp'

    begin
      # debugger
      customer = Stripe::Customer.create({
        :email => params[:token][:email],
        :source => params[:token][:id]
      })
      # debugger
      charge = Stripe::Charge.create({
        :customer => customer.id,
        :amount => params[:amount],
        :currency => 'usd'
      })

      render json: charge

        rescue Stripe::CardError => e
          render json: { message: 'oops'}, status: :not_acceptable
        end
  end
end
