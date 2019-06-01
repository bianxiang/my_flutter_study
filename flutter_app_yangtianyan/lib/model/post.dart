class Post{

   Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,
    this.selected
  });

  final String title;
  final String author;
  final String imageUrl;
  final String description;
  bool selected = false;


}

final List<Post> posts = [
  Post(
    title: "axxxtitle1",
    author:"author1",
    imageUrl:"https://goss.veer.com/creative/vcg/veer/612/veer-135136991.jpg",
    description: "description1description1description1description1description1description1"
  ),
  Post(
    title: "btitle2",
    author:"author2",
    imageUrl:"https://goss1.veer.com/creative/vcg/veer/612/veer-134535796.jpg",
      description: "description2description2description2description2description2description2"
  ),
  Post(
    title: "title3",
    author:"author3",
    imageUrl:"https://goss2.veer.com/creative/vcg/veer/612/veer-150904776.jpg",
      description:"description3description3description3description3description3description3"
  ),
  Post(
    title: "vtitle4",
    author:"author4",
    imageUrl:"https://goss.veer.com/creative/vcg/veer/612/veer-135136991.jpg",
      description:"description4description4description4description4description4description4"
  ),
  Post(
    title: "etitle5",
    author:"author5",
    imageUrl:"https://goss1.veer.com/creative/vcg/veer/612/veer-134535796.jpg",
      description:"description5description5description5description5description5description5"
  ),
  Post(
    title: "ktitle6",
    author:"author6",
    imageUrl:"https://goss2.veer.com/creative/vcg/veer/612/veer-150904776.jpg",
    description: "description6description6description6description6description6description6"
  ),
  Post(
      title: "ztitle77",
      author:"author77",
      imageUrl:"https://goss2.veer.com/creative/vcg/veer/612/veer-150904776.jpg",
      description: "description6description6description6description6description6description6"
  ),
];