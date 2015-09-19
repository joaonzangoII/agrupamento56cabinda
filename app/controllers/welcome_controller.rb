class WelcomeController < ApplicationController
  def index
    @articles = Article.all
    # Article.reindex
  end
end
