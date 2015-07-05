class AlarmaSerializer < ActiveModel::Serializer
  attributes :id, :nombreAlarma, :fechaAlarma
  has_one :usuario
end
