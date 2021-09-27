class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: birds
  end
end

# we only need instance variables when we are rendering to ERB. 
# Now that we are directly rendering to JSON in the same action, we no longer need to deal with instance variables 
# and can instead just use a local variable:birds