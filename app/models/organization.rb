class Organization < ApplicationRecord
  include DmUniboCommon::Organization

  def manager_mails
    self.permissions.includes(:user).map{|a| a.user.upn}.to_a
  end
end

