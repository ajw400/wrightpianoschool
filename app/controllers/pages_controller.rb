class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end

  def googled9114c126f84b48f
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
    "#{Rails.root}/public/policy20182019.pdf",
    filename: "Wright Piano School Studio Policy 2018-2019.pdf",
    type: "application/pdf"
    )
  end

  def download_calendar
  send_file(
    "#{Rails.root}/public/calendar20182019.pdf",
    filename: "Wright Piano School Teaching Calendar 2018-2019.pdf",
    type: "application/pdf"
    )
  end
end
