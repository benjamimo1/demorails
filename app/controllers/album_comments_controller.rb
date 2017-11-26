class AlbumCommentsController < ApplicationController

	def create
    @album = Album.find(params[:id])
    @comment = @album.album_comments.create(comment_params)
    redirect_to album_path(@album)
  end
 
  private
    def comment_params
      params.require(:album_comment).permit(:commenter, :body)
    end


end
