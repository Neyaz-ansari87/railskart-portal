class HomeController < ApplicationController
  def index
    
  end

  def get_template
    template = Template.find_by_id(params[:template_id])
    render json: {template_data: template.description}
  end
end
