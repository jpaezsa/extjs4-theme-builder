class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    respond_to do |format|

        theme = params[:theme] || 'theme'
        @color1 = params[:color1] || '#B6B5C7'
        @color2 = params[:color2] || '#2A284D'

        path = File.join(Rails.root, 'app/assets/stylesheets/ext4/ext-all-theme.css.scss')
        file = File.new(path,'w')
        file.syswrite("$theme: '#{theme}';\n")
        file.syswrite("$color1: #{@color1};\n")
        file.syswrite("$color2: #{@color2};\n")
        file.syswrite("@import 'ext-all';")

        format.html # index.html.erb
    end
  end
end
