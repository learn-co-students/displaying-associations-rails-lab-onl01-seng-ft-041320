# Displaying Associations Rails

In the previous unit, we used validations and forms to create a management
dashboard for songs and artists. Now we're ready to start connecting those
models and using their relationships to display more interesting data.

- In the controllers, this lab will require you to write `show` and `index`
  actions for both `Song` and `Artist`.
  def show
  end
  def index
  end
  def show
  end
  def index
  end
see how the form was displayed on respective pages
look at form_for path_song path_artist(@instance)
if errors? div field class field_with_errors
- You'll need to add a foreign key by writing your own migration.
rails
AddSongId AddArtistID Foregin key two tables or add another join table
- You'll need to set up the association in the model classes.
artist has many songs
- You'll need to format and link to the songs and artists according to the
  specs.
  <%= link_to path_name(@class_name) %>

Additionally, you'll find that the specs require two special methods,
`Artist#song_count` and `Song#artist_name`. These methods are meant to protect
the views from complexity that belongs in the model.

IN THE MODEL CREATE METHOD SONG_COUNT ARTIST.SONG.ALL


They are also a great example of a software design principle called the
[Law of Demeter][demeter], which is sometimes called the "one dot" rule in
object-oriented languages like Ruby. In other words, `ruby user.best_friend` is
better than `ruby user.friends.find_by(best: true)` because all of the
"friend"-related complexity is hidden away within the user model. This
**protects** user-related code from future changes to friend functionality.

For example, if the above architecture changed such that best friendship was
determined by the highest "friendship" value instead of a boolean `best` flag,
the "two-dots" code would need to be changed _everywhere_, but the first
snippet, which obeys the Law of Demeter, hides that complexity in the
`User#best_friend` method, whose definition can be changed without having to
track down and update every single usage.

<p class='util--hide'>View <a href='https://learn.co/lessons/displaying-associations-rails-lab'>Displaying Associations Data Lab</a> on Learn.co and start learning to code for free.</p>

[demeter]: https://en.wikipedia.org/wiki/Law_of_Demeter
