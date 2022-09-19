# netflix_clone
  
This is a smiple Netflix Clone.  
This clone has many features that where implemented using varius packages.  
This project diplayes assets from the assets folder as well as fetching other data from a REST API.  
  
### Video player  
This application has a video player inwhich the user can play videos and have some basic playback controlls.  
This was done by using the `video_player` and the `wakelock`.  
The `wakelock` packages allows the device to stay on without turning off the screen. This feature is used when the video player is active.  
In the clone, I have used the open source movie `Sintel`.  
  
### Search Screen
When the earch screen is opened, there will be a lits of the current top 10 Movies and Tv-Shows.  
These Movies are fetched from the `TMDB API`.  
The search bar takes in a query and using state mangment and the `provider` package, the query is based to the API, and the result is then sent back to the UI to be updated.

### Coming Soon Screen
Same as the Search Screen, this screen displayes the upcoming movies and tv-shows using the same API, TMDB.  
