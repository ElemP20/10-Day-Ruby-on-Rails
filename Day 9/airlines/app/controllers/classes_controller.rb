class ClassesController < ApplicationController
  before_action :require_login
  before_action :ensure_economy!, only: [:economy]
  before_action :ensure_business!, only: [:business]
  before_action :ensure_first_class!, only: [:first_class]

  def economy
  end

  def business
  end

  def first_class
  end

  private

    def ensure_economy!
      require_role!(:economy)
    end

    def ensure_business!
      require_role!(:business)
    end

    def ensure_first_class!
      require_role!(:first_class)
    end
end
