class Multicast::Preset < ApplicationRecord
  belongs_to :body_template
  belongs_to :attachment_template
  belongs_to :cost_centre
end
