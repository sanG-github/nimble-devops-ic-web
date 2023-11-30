# frozen_string_literal: true

class CachesController < ApplicationController
  def index; end

  def set_cache
    Rails.cache.write(params[:key], params[:value])
  end

  def retrieve_cache
    render json: { value: Rails.cache.read(params[:key]) }
  end
end
