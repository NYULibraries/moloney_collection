class StaticPagesController < ApplicationController
  def home 
    @song_grid = Song.order('id DESC').limit(6)
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
