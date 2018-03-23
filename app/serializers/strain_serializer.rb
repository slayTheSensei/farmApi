class StrainSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_one :phenotype
end
