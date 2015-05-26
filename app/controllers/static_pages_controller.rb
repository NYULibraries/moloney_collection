class StaticPagesController < ApplicationController
  def home 
    @doc_grid = Document.order('id DESC').limit(9)
    @songs = Song.order('id DESC').limit(7)
    @song_list = @songs.group_by{ |s| s.artist }
  end

  def rights_statement
  end

  def contact 
  end

  def about
  end

  def tamiment_library
  end

  def song_rights
  end
end
