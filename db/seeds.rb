require "open-uri"
  OverwatchClass.destroy_all
  OverwatchCharacter.destroy_all

   ow_hero = JSON.parse(URI.open("https://overwatch-hero-api.herokuapp.com/api/v1/heroes").read)

   ow_hero.each do |m|
    ow_class = OverwatchClass.find_or_create_by(name: m["role"])

    if ow_class && ow_class.valid?
    ow_create = ow_class.overwatch_characters.create(
      name: m['name'],
      difficulty: m['difficulty'],
      image: m['image'],
      description: m['description']
    )
  end
  end
