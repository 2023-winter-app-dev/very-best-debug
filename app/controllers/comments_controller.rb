class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.author_id = params.fetch("browser_author_id")
    comment.venue_id = params.fetch("browser_venue_id")
    comment.body = params.fetch("browser_comment")
    comment.save

    redirect_to("/venues/#{comment.venue_id}")
  end
end
