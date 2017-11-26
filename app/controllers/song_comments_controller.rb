class SongCommentsController < ApplicationController

def create
    @song = Song.find(params[:id])
    @comment = @song.song_comments.create(comment_params)
    redirect_to song_path(@song)
  end
 
  private
    def comment_params
      params.require(:song_comment).permit(:commenter, :body)
    end


end
