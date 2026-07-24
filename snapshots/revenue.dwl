inventory reduce (f,a=dashboard) -> 
	lower(f.airlineName) match {
		case "united" -> {
		  "united": {
		    "seats": a.united.seats + f.availableSeats,
		    "revenue": a.united.revenue + f.availableSeats * f.price
		  },
		  "american": {
		    "seats": a.american.seats,
		    "revenue": a.american.revenue
		  },
		  "delta": {
		    "seats": a.delta.seats,
		    "revenue": a.delta.revenue 
		   }
		}
		case "delta" -> {
		  "delta": {
		    "seats":   a.delta.seats + f.availableSeats,
		    "revenue": a.delta.revenue + f.availableSeats * f.price
		  },
		  "american": {
		    "seats": a.american.seats,
		    "revenue": a.american.revenue
		  },
		  "united": {
		    "seats": a.united.seats,
		    "revenue": a.united.revenue 
		   }
		}	
		case "american" -> {
		  "american": {
		    "seats":   a.american.seats + f.availableSeats,
		    "revenue": a.american.revenue + f.availableSeats * f.price
		  },
		  "delta": {
		    "seats": a.delta.seats,
		    "revenue": a.delta.revenue
		  },
		  "united": {
		    "seats": a.united.seats,
		    "revenue": a.united.revenue 
		   }
		}			
		else -> dashboard
}
