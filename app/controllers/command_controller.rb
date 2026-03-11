class CommandController < ApplicationController
  def index
    @commands = getallcommands
    @lastrun = getlastrun
  end

  def show
    @command = findone(:id)
  end

  private
  def getallcommands
    Commands.all
  end
  
  def getlastrun
    Commands.order(created_at: :desc).first()
  end

  def findone(id)
    Commands.find(params[:id])
  end
end
