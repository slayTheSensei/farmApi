class LightModelSerializer < ActiveModel::Serializer
  attributes :id, :name, :lumen_efficacy, :type, :watts
end
