class CameraSerializer < ActiveModel::Serializer
  attributes :id, :video_feed
  has_one :room
end
