class CommandController < ApplicationController
  def index
    @commands = Command.all
  end
end
