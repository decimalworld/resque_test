class TestJob
  @queue = :testing_queue

  def self.perform params
    testing_queue = TestingQueue.new(params[:testing_queue])
    testing_queue.save
  end
end