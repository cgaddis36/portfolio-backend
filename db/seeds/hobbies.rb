developer = Developer.first
hobby0 = Hobby.create(
  developer_id: developer.id,
  name: "Fly Fishing",
  image: "fly",
  video: "https://fishing-video.s3.amazonaws.com/beachFlyFish.mp4"
)

hobby1 = Hobby.create(
  developer_id: developer.id,
  name: "Hiking",
  image: "hike",
  video: "https://hiking-video.s3.amazonaws.com/hiking.mp4"
)

hobby2 = Hobby.create(
  developer_id: developer.id,
  name: "Skiing",
  image: "ski",
  video: "https://skiing-video.s3.amazonaws.com/1+(1).mp4"
)

hobby3 = Hobby.create(
  developer_id: developer.id,
  name: "Diving",
  image: "dive",
  video: "https://diving-video.s3.amazonaws.com/diving.mp4"
)

hobby4 = Hobby.create(
  developer_id: developer.id,
  name: "Biking",
  image: "bike",
  video: "https://biking-video.s3.amazonaws.com/biking.mp4"
)