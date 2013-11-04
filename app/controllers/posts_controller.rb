class PostsController < ApplicationController
  include InheritedResources::DSL
  inherit_resources

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def permitted_params
    params.permit( post: [:title, :body, :bootsy_image_gallery_id] )
  end

end
