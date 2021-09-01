class Api::CoachesController < ApplicationController
  def index
    @coaches = [
        "Christy Schumm",
        "Natalia Stanton Jr.",
        "Nola Murazik V","Elyssa O'Kon",
        "Dr. Geovany Keebler"
      ]
    render "index.json.jb"
  end

  def create_hours(parameters)
    start_time = parameters[:start_time] ? parameters[:start_time] : 0
    end_time = parameters[:end_time] ? parameters[:end_time] : 24.hours
    increment = parameters[:increment] ? parameters[:increment] : 30.minutes  
    Array.new(1 + (end_time - start_time)/increment) do |i|
      (Time.now.midnight + (i*increment) + start_time).strftime("%I:%M %p")
    end
  end

  def show 
    @appointment = 
        # create_hours(:start_time => 9.hours, :end_time => 17.5.hours)
        {
         "Christy Schumm":{
            "Monday": {
              "9:00 AM": true,
              "9:30 AM": true,
              "10:00 AM": true,
              "10:30 AM": true,
              "11:00 AM": true,
              "11:30 AM": true,
              "12:00 PM": true,
              "12:30 PM": true,
              "1:00 PM": true,
              "1:30 PM": true,
              "2:00 PM": true,
              "2:30 PM": true,
              "3:00 PM": true,
              "3:30 PM": true,
              "4:00 PM": true,
              "4:30 PM": true,
              "5:00 PM": true,
              "5:30 PM": true,
            },
            "Tuesday": {
              "8:00 AM": true,
              "8:30 AM": true,
              "9:00 AM": true,
              "9:30 AM": true,
              "10:00 AM": true,
              "10:30 AM": true,
              "11:00 AM": true,
              "11:30 AM": true,
              "12:00 PM": true,
              "12:30 PM": true,
              "1:00 PM": true,
              "1:30 PM": true,
              "2:00 PM": true,
              "2:30 PM": true,
              "3:00 PM": true,
              "3:30 PM": true,
              "4:00 PM": true,
            },
            "Thursday": {
              "9:00 AM": true,
              "9:30 AM": true,
              "10:00 AM": true,
              "10:30 AM": true,
              "11:00 AM": true,
              "11:30 AM": true,
              "12:00 PM": true,
              "12:30 PM": true,
              "1:00 PM": true,
              "1:30 PM": true,
              "2:00 PM": true,
              "2:30 PM": true,
              "3:00 PM": true,
              "3:30 PM": true,
              "4:00 PM": true,
            },
            "Friday": {
              "7:00 AM": true,
              "7:30 AM": true,
              "8:00 AM": true,
              "8:30 AM": true,
              "9:00 AM": true,
              "9:30 AM": true,
              "10:00 AM": true,
              "10:30 AM": true,
              "11:00 AM": true,
              "11:30 AM": true,
              "12:00 PM": true,
              "12:30 PM": true,
              "1:00 PM": true,
              "1:30 PM": true,
              "2:00 PM": true,
              "2:30 PM": true,
              "3:00 PM": true,
              "3:30 PM": true,
              "4:00 PM": true,
            }
          },
          "Natalia Stanton Jr.":{
            "Tuesday": {
              "8:00 AM": true,
              "8:30 AM": true,
              "9:00 AM": true,
              "9:30 AM": true,
              "10:00 AM": true,
            },
            "Wednesday": {
              "11:00 AM": true,
              "11:30 AM": true,
              "12:00 PM": true,
              "12:30 PM": true,
              "1:00 PM": true,
              "1:30 PM": true,
              "2:00 PM": true,
              "2:30 PM": true,
              "3:00 PM": true,
              "3:30 PM": true,
              "4:00 PM": true,
              "4:30 PM": true,
              "5:00 PM": true,
              "5:30 PM": true,
              "6:00 PM": true,
            },
            "Saturday": {
              "9:00 AM": true,
              "9:30 AM": true,
              "10:00 AM": true,
              "10:30 AM": true,
              "11:00 AM": true,
              "11:30 AM": true,
              "12:00 PM": true,
              "12:30 PM": true,
              "1:00 PM": true,
              "1:30 PM": true,
              "2:00 PM": true,
              "2:30 PM": true,
              "3:00 PM": true,
            },
            "Sunday": {
              "8:00 AM": true,
              "8:30 AM": true,
              "9:00 AM": true,
              "9:30 AM": true,
              "10:00 AM": true,
              "10:30 AM": true,
              "11:00 AM": true,
              "11:30 AM": true,
              "12:00 PM": true,
              "12:30 PM": true,
              "1:00 PM": true,
              "1:30 PM": true,
              "2:00 PM": true,
              "2:30 PM": true,
              "3:00 PM": true,
            }
          }
        }
    render "show.json.jb"
  end
end
