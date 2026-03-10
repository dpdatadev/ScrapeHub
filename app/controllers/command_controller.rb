class CommandController < ApplicationController
  def index
    @commands = Commands.all
  end

  def show
    @command = Commands.find(params[:id])
  end
end
