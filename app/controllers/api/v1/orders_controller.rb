class Api::V1::OrdersController < ApplicationController

  def create
    order = nil
    
    ActiveRecord::Base.transaction do

      order = Order.create!(order_params)

      payment = Payment.create!(payment_params(order))

      benefit = Benefit.create!(benefit_params(order))
    end

    render json: { order_id: order.id }, status: :created

  rescue => e
    render json: { errors: e.message }, status: :unprocessable_entity
  end

  private

  def order_params
    params.permit(
      :external_id,
      :status
    )
  end


  def payment_params(order)
    {
      order: order,
      external_id: params[:external_id],
      amount_in_cents: params[:amount_in_cents],
      payment_type: params[:payment_source][:type],
      wallet: params[:payment_source][:wallet],
      status: params[:status]
    }
  end


  def benefit_params(order)
    {
      order: order,
      external_id: params[:external_id],
      recipient: params[:recipient],
      status: params[:status],

      product_id: params[:product][:id],
      product_name: params[:product][:name],
      product_amount: params[:product][:amount],
      product_unit: params[:product][:unit],

      customer_id: params[:customer][:id],
      customer_activated_at: params[:customer][:actived_at]
    }
  end

end