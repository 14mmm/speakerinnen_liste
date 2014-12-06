class Medialink < ActiveRecord::Base
  include AutoHtml

  #attr_accessible :url, :title, :description
  belongs_to :profile

  validates :title, :url, presence: true

  auto_html_for :url do
    html_escape
    image
    youtube width: 400, height: 250
    vimeo width: 400, height: 250
    simple_format
    link target: '_blank', rel: 'nofollow'
  end

  def as_json(options = {})
    attributes.slice(
      "url",
      "title",
      "description",
      "position"
    )
  end

end
