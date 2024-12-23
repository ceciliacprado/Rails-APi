# frozen_string_literal: true

class ApplicationController < ActionController::API
    def index
        render file: Rails.root.join('public', 'api-docs', 'index.html')
    end
end
