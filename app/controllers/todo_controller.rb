class TodoController < ApplicationController
def index 
end
def show
    if params["id"] == "1"
        @todo_description = "Wake up."
        @todo_time = "25 minutes"
        @todo_start = "6:00"
        @todo_end = "6:25"
        @todo_place = "at home"
        @todo_photos ="https://image.shutterstock.com/z/stock-photo-wake-up-women-114833992.jpg"
        @todo_videos ="none"
    elsif  params["id"] == "2"
        @todo_description = "Breakfast."
        @todo_time = "25 minutes"
        @todo_start = "6:30"
        @todo_end = "6:55"
        @todo_place = "at home"
        @todo_photos ="https://static.pexels.com/photos/103124/pexels-photo-103124.jpeg"
        @todo_videos ="none"
    elsif  params["id"] == "3"
        @todo_description = "Go to school."
        @todo_time = "25 minutes"
        @todo_start = "7:00"
        @todo_end = "7:25"
        @todo_place = "on my way to school"
        @todo_photos ="http://www.sightwordsgame.com/wp-content/uploads/2009/08/kids-going-to-school-300x300.jpg"
        @todo_videos ="none"
    elsif  params["id"] == "4"
        @todo_description = "Go to claases."
        @todo_time = "4 hours and 40 minutes"
        @todo_start = "7:30"
        @todo_end = "12:10"
        @todo_place = "in the classroom"
        @todo_photos ="http://www.ourbigfattraveladventure.com/wp-content/uploads/2014/10/IMG_4177-455x340.jpg"
        @todo_videos ="none"
    elsif  params["id"] == "5"
        @todo_description = "Have lunch."
        @todo_time = "1 hour and 10 minutes"
        @todo_start = "12:15"
        @todo_end = "6:25"
        @todo_place = "in the dining room"
        @todo_photos ="https://previews.123rf.com/images/shiyiershier/shiyiershier1310/shiyiershier131000001/22572912-kids-at-lunchtime-Stock-Vector-lunch-eating-have.jpg"
        @todo_videos ="none"
    elsif  params["id"] == "6"
        @todo_description = "Go to claases."
        @todo_time = "4 hours"
        @todo_start = "13:30"
        @todo_end = "17:30"
        @todo_place = "in the classroom"
        @todo_photos ="https://foleyhighschoolleadership.files.wordpress.com/2012/02/bed-class-photo.jpg"
        @todo_videos ="none"
    elsif  params["id"] == "7"
        @todo_description = "Have dinner."
        @todo_time = "50 minutes"
        @todo_start = "17:35"
        @todo_end = "18:25"
        @todo_place = "in the dining room"
        @todo_photos ="http://media.npr.org/assets/img/2013/02/26/dinner01_slide-3fe223f875768309fbe02165a865c9c09c969ad5-s900-c85.jpg"
        @todo_videos ="none"
    elsif  params["id"] == "8"
        @todo_description = "Go home."
        @todo_time = "25 minutes"
        @todo_start = "18:30"
        @todo_end = "18:55"
        @todo_place = "on my way home"
        @todo_photos ="https://previews.123rf.com/images/lhfgraphics/lhfgraphics1303/lhfgraphics130300163/18476658-Doodle-style-time-to-go-home-from-work-illustration-in-vector-format-Includes-text-and-blowing-whist-Stock-Vector.jpg"
        @todo_videos ="none"
    elsif  params["id"] == "9"
        @todo_description = "Do homework."
        @todo_time = "4 hours"
        @todo_start = "19:00"
        @todo_end = "23:00"
        @todo_place = "at home"
        @todo_photos ="https://www.wtps.org/cms/lib8/NJ01912980/Centricity/Domain/1215/homework.gif"
        @todo_videos ="none"
    elsif  params["id"] == "10"
        @todo_description = "Go to bed."
        @todo_time = "6 hours 30 minutes"
        @todo_start = "23:30"
        @todo_end = "6:00"
        @todo_place = "at home"
        @todo_photos ="http://weclipart.com/gimg/57420B54B4F3C903/go%20to%20bed.jpg"
        @todo_videos ="none"
    end
end
def construction
end

# dai ni qu new de na yi ye
def new
end

def create
    todo = Todo.new
    todo.description = params['description']
    todo.pomodoro_estimate = params['pomodoro-estimate']
    todo.save 
    redirect_to "/show/#{todo.id}"
end
end