module ApplicationHelper

  def style_tag(stylesheet)
    asset = YourApplication::Application.assets[stylesheet]
    clone = asset.class.new(asset.environment, asset.logical_path, asset.pathname, {COLOR1: '#ffffff'})
    content_tag("STYLE", clone.body.html_safe, type:"text/css")
  end

end
