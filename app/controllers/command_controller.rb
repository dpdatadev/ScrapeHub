class CommandController < ApplicationController
  def index
    @commands = getrecent
    @lastrun = getlastrun
  end

  def show
    @command = findone(:id)
  end

  def lineage
    @lineage = getlineage
  end

  private
  def getlineage
    Commands.all.where(status: "LINEAGE").order(finished_at: :desc)
  end
  
  def getrecent
    Commands.all.order(finished_at: :desc).limit(25)
  end

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
