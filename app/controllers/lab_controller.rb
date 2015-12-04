class LabController < ApplicationController
  def new
  end

  def overview
  	@disable_nav = true
	@disable_foot = true
  end

  def lab_3Dprinter
  	@disable_nav = true
	@disable_foot = true
  end
end
