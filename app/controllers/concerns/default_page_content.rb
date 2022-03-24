module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end 

  def set_page_defaults
    @set_title = "Dev Portfolio | My portfolio Site"
    @seo_keyowrds = "Parth Portfolio"
  end
end