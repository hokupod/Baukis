class Admin::Base < ApplicationController
  private
  def current_administrator
    if session[:admin_member_id]
      @current_admin_member ||=
          StaffMember.find_by(id: session[:admin_member_id])
    end
  end

  helper_method :current_administrator
end