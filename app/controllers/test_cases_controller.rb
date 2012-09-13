class TestCasesController < ApplicationController
  respond_to :json

  def index
    respond_with TestCase.all
  end

  def show
    respond_with TestCase.find(params[:id])
  end

  def create
    respond_with TestCase.create(params[:test_case])
  end

  def update
    respond_with TestCase.update(params[:id], params[:test_case])
  end

  def destroy
    respond_with TestCase.destroy(params[:id])
  end
end
