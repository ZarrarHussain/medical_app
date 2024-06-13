class TestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  def index
    @tests = @order.tests
  end

  def show
  end

  def new
    @test = @order.tests.build
  end

  def create
    @test = @order.tests.build(test_params)
    if @test.save
      redirect_to [@order, @test], notice: 'Test was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @test.update(test_params)
      redirect_to [@order, @test], notice: 'Test was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @test.destroy
    redirect_to order_tests_url(@order), notice: 'Test was successfully destroyed.'
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end

  def set_test
    @test = @order.tests.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:test_name, :description, :fasting_required, :status, :sample_collection_date, :sample_received_date, :result_document)
  end
end
