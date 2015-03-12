class StaticPagesController < ApplicationController
  def home 
    @doc_grid = Document.order('id DESC').limit(12)
    @songs = Song.order('id DESC').limit(5)
    @song_list = @songs.group_by{ |s| s.artist }
  end

  def contact 
  end

  def mick_moloney
  end

  def moloney_collection
  end

  def tamiment_library
  end

  def song_rights
  end
end
