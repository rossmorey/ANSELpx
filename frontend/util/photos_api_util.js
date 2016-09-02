export const fetchPhotos = function(success, error) {
	$.ajax({
		method: 'GET',
		url: '/api/photos',
		success,
		error
	});
};
