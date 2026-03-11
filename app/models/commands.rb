class Commands < ActiveRecord::Base
  # has_rich_text :stdout
  def to_param
    "#{uuid}-#{name.parameterize}-#{status.parameterize}"
  end
end
