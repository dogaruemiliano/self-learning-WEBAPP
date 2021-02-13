class Api::V1::TestsController < Api::V1::BaseController
  before_action :set_test, only: [ :show ]

  def index
    @tests = policy_scope(Test)
  end

  def show
  end

  private

  def set_test
    @test = Test.find(params[:id])
    authorize @test
  end
end
