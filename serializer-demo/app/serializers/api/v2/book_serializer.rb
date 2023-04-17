module Api
  module V2
    class BookSerializer < ActiveModel::Serializer
      attributes :id,:name,:description
    end
  end
end
   