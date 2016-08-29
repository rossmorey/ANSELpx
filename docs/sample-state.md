{
  currentUser: {
    id: 1,
    username: "app-academy"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []}
},
  targetUser: {
    username: "username",
    city: "city",
    state: "California",
    country: "United States",
    userImgUrl: "http://...",
    views: 12,
    followers: {
      1: {
        username: "username",
        userImgUrl: "http://..."
      }
    }
    followed: {
      1: {
        username: "username",
        userImgUrl: "http://..."
      }
    }
  }
  photos: {
    1: {
      title: "Sample State",
      description: "is useful to plan",
      username: "sampleUsername"
      photo_img_url: "http://www.sample.com/image.png",
      views: 12
      likes: 4
      comments: {
        username: "username",
        body: "comment here",
        followers: 12
      }
    }
  }
  toFollow: {
    1: {
      username: "username",
      userImgUrl: "http://...",
      follower_count: 12
    },
    2: {},
    3: {},
    4: {},
    5: {}
  }
}
