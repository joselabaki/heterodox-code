class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :set_locale
    before_action :detect_device_variant

    private
    def set_locale
    I18n.locale = params[:locale] if params[:locale].present?
    end


    def default_url_options(options = {})
  {locale: I18n.locale}
  end 

  def detect_device_variant
    request.variant = :phone if browser.device.mobile?
  end

end
