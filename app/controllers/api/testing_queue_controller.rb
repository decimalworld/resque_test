class Api::TestingQueueController < ApplicationController
  
  def create
    Resque.enqueue(TestJob, create_params)

    # testing_queue = TestingQueue.new(create_params)
    # if testing_queue.save
    #   render json: testing_queue, status: 201
    # else 
    #   render json: { errors: testing_queue.errors }, status: 422
    # end
  end

  private
  def create_params
    @create_params ||= params.require(:testing_queue).permit(:name)
  end

end
