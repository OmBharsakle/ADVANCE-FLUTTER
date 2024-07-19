class PhotosModal
{
  late String thumbnailUrl,title,url;
  late int albumId,id;

  PhotosModal({required this.albumId,required this.id,required this.thumbnailUrl,required this.title,required this.url});

  factory PhotosModal.fromMap(Map m1)
  {
    return PhotosModal(albumId: m1['albumId'], id: m1['id'], thumbnailUrl: m1['thumbnailUrl'], title: m1['title'], url: m1['url']);
  }
  
}