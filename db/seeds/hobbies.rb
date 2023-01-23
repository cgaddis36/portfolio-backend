developer = Developer.first
hobby0 = Hobby.create(
  developer_id: developer.id,
  name: "Fly Fishing",
  image: "https://flyfish-photo.s3.amazonaws.com/fly.png",
  video: "https://fishing-video.s3.amazonaws.com/beachFlyFish.mp4"
)

hobby1 = Hobby.create(
  developer_id: developer.id,
  name: "Hiking",
  image: "https://hike-photo.s3.amazonaws.com/hike.png",
  video: "https://hiking-video.s3.amazonaws.com/hiking.mp4"
)

hobby2 = Hobby.create(
  developer_id: developer.id,
  name: "Skiing",
  image: "https://ski-photo.s3.amazonaws.com/skiChris.png",
  video: "https://skiing-video.s3.amazonaws.com/1+(1).mp4"
)

hobby3 = Hobby.create(
  developer_id: developer.id,
  name: "Diving",
  image: "https://beach-sunset.s3.amazonaws.com/beachSunset.png",
  video: "https://diving-video.s3.amazonaws.com/diving.mp4"
)

hobby4 = Hobby.create(
  developer_id: developer.id,
  name: "Biking",
  image: "https://beach-bike.s3.amazonaws.com/beachBikes.png",
  video: "https://biking-video.s3.amazonaws.com/biking.mp4"
)