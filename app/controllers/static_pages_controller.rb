class StaticPagesController < ApplicationController
  def home
    @projects=Project.where(:featured => true, :published => true)
  end

  def about
  end

  def where
  end

  def legal
  end

  def contact
  end

  def submitted
  end
end
