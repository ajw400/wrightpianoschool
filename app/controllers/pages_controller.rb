class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def contact
  end

  def policy
  end

  def calendar
  end

  def videos
  end

  def download_policy
  send_file(
    "#{Rails.root}/public/policy.pdf",
    filename: "Wright Piano School - Studio Policy 2017-2018.pdf",
    type: "application/pdf"
    )
  end

  def download_calendar
  send_file(
    "#{Rails.root}/public/calendar.pdf",
    filename: "Wright Piano School - Calendar 2017-2018.pdf",
    type: "application/pdf"
    )
  end
end
