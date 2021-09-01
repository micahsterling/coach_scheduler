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

  def show 
    @appointment = {
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
        }
      }
    }
    render "show.json.jb"
  end
end
