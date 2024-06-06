class MistakeUser < ApplicationRecord
    belongs_to :user
    belongs_to :mistake
end
