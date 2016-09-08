export const sendNewFollow = function (follow, success, error) {

    $.ajax({
      method: 'POST',
      url: 'api/follows',
      data: follow,
      success,
      error
    });
};

export const sendDeleteFollow = function(follow, success, error) {
  $.ajax({
    method: 'delete',
    url: 'api/follows',
    data: follow,
    success,
    error
  });
};
