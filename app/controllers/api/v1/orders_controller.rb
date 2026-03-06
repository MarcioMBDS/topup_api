class Api::V1::OrdersController < ApplicationController

  def create
    ActiveRecord::Base.transaction do

      order = Order.create!(
        external_id: params[:external_id],
        status: params[:status]
      )

      Payment.create!(
        order: order,
        amount_in_cents: params[:amount_in_cents],
        external_id: params[:external_id],
        payment_type: params[:payment_source][:type],
        wallet: params[:payment_source][:wallet],
        status: params[:status]
      )

      Benefit.create!(
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
      )

      render json: { order_id: order.id }, status: :created
    end
  rescue => e
    render json: { errors: e.message }, status: :internal_server_error
  end


  def show
    order = Order.find(params[:id])
    render json: order
  end


  def index
    orders = Order.all
    render json: orders
  end

end