class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]

  respond_to :html
  autocomplete :customer, :cnic, full: false

  def index
    @purchases = Purchase.all
    respond_with(@purchases)
  end

  def show
    respond_with(@purchase)
  end

  def new
    @purchase = Purchase.new
    respond_with(@purchase)
  end

  def edit
  end

  def create
    @customer_id = customer_id(purchase_params[:customer_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.customer_id = @customer_id
    @purchase.save
    respond_with(@purchase)
  end

  def update
    @purchase.update(purchase_params)
    respond_with(@purchase)
  end

  def destroy
    @purchase.destroy
    respond_with(@purchase)
  end

  private
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    def purchase_params
      params.require(:purchase).permit(:user_id, :customer_id, :item_name, :purchase_date, :tenure, :last_installment_paid_on, :next_installment_due_on)
    end

    def customer_id(cnic)
      @customer = Customer.find_by(cnic: cnic).id
    end
end
