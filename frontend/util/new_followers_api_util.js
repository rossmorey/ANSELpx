export const fetchNewFollowers = function(success, error) {
	$.ajax({
		method: 'GET',
		url: '/api/users',
		success,
		error
	});
};
