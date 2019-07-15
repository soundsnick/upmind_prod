class FaqController < ApplicationController
  def index
    @title = text('faq', 'faq_title')
    @faq_categories = get_language.faq_categories.all
  end
end
