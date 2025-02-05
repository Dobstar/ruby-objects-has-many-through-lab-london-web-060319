class Patient

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def appointments
        Appointment.all.select{|appts| appts.patient == self}
    end 

    def new_appointment(doctor, date)
        Appointment.new(self,doctor,date)
    end 

    def doctors
        appointments.map{|appt| appt.doctor}
    end 
end 