class ReceiptController < ApplicationController
  def index
    @receipts = Receipt.all
  end

  def new
    @receipt = Receipt.new
  end

  def create
  end

  def destroy
  end
end
