## Docker setup for a rails application

`cd` to directory containing your application directory, i.e.

       ~/workspace> ls
       knight-rider
       
       ~/workspace> git clone <git_repository>/docker.git
       ~/workspace> cd docker
       ~/workspace/docker> docker-compose up
       ~/workspace/docker> docker-compose exec app bash
       
       # Then inside the app container...
       $ rake db:setup



