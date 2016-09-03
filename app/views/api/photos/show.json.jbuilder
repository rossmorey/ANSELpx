@photo = [@photo]
json.array! @photo, partial: 'api/photos/photo', as: :photo
