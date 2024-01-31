class Stories {
  final String name;
  final bool isHasStory = true;
  final bool isUserStory;

  Stories({required this.name, this.isUserStory = false});
  Stories.currentUser({required this.name, this.isUserStory = true});
}

List<Stories> listStories = [
  Stories.currentUser(name: 'Satriya Wicaksana'),
  Stories(name: 'Nafidzah Nur'),
  Stories(name: 'Leonardo DiCaprio'),
  Stories(name: 'Meryl Streep'),
  Stories(name: 'Denzel Washington'),
  Stories(name: 'Scarlett Johansson'),
  Stories(name: 'Brad Pitt'),
  Stories(name: 'Cate Blanchett'),
  Stories(name: 'Tom Hanks'),
  Stories(name: 'Natalie Portman'),
  Stories(name: 'Robert Downey Jr.'),
];
