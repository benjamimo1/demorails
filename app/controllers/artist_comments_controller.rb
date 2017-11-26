class ArtistCommentsController < ApplicationController

def create
    @artist = Artist.find(params[:id])
    @comment = @artist.artist_comments.create(comment_params)
    redirect_to artist_path(@artist)
  end
 
  private
    def comment_params
      params.require(:artist_comment).permit(:commenter, :body)
    end

end
