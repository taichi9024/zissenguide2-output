class Staff::TopController < Staff::Base
  skip_before_action :forced_logout
  skip_before_action :time_logout
  def index
  end
end
