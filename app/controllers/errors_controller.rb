class ErrorsController < ApplicationController
  def not_found
      render(:status => 404 , layout: 'exception')

    end

    def internal_server_error
      render(:status => 500, layout: 'exception')

    end

    def unprocessable_entity
      render(:status => 422, layout: 'exception')

    end
end
