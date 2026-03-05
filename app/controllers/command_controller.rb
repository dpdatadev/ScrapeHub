class CommandController < ApplicationController
  def index
    @commands = Commands.all
  end
end
