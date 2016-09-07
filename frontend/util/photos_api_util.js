export const fetchPhotos = function(success, error) {
	$.ajax({
		method: 'GET',
		url: '/api/photos',
		success,
		error
	});
};

export const fetchUserPhotos = function(id, success, error) {
	$.ajax({
		method: 'GET',
		url: '/api/users/'+id+'/photos',
		success,
		error
	});
};

export const sendPhoto = function(photo, success, error) {
	$.ajax({
		method:'POST',
		url: '/api/photos',
		data: photo,
		success,
		error
	});
};
