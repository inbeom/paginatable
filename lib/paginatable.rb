require 'paginatable/version'

module Paginatable
  extend ActiveSupport::Concern

  module ClassMethods
    def max_id(max)
      if max
        where(arel_table[:id].lt(max))
      else
        all
      end
    end

    def since_id(since)
      if since
        where(arel_table[:id].gt(since))
      else
        all
      end
    end

    def paginate(params)
      order(params[:_order] || 'id DESC').since_id(params[:since_id]).max_id(params[:max_id]).page(params[:page] || 1).per(params[:per_page] || 50)
    end
  end
end
