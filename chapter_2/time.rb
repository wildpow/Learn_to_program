YEARS_IN_DECADE = 10
DAYS_IN_YEAR = 365
MONTHS_IN_YEAR = 12
HOURS_IN_YEAR = DAYS_IN_YEAR * HOURS_IN_DAY
HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
SECONDS_IN_HOUR = 60
SECONDS_IN_MINUTE = 60
MINUTES_IN_DECADE = YEARS_IN_DECADE * DAYS_IN_YEAR * HOURS_IN_DAY * MINUTES_IN_HOUR
DAYS_IN_MONTH = [31,28,31,30,31,30,31,31,30,31,30,31]

puts "What year where you born?"
my_birth_year = gets.strip.to_i

time = Time.now
this_year = time.year
today = time.day
the_hour = time.hour



def days_so_far(days_in_month)
  time = Time.now
  current_month = time.month - 2
  sum = 0
  for i in 0..current_month do
    sum += days_in_month[i]
  end
  sum += time.day - 1
end

hours_passed_this_year = days_so_far(DAYS_IN_MONTH) * HOURS_IN_DAY + the_hour
my_age_in_days = (this_year - my_birth_year - 1) * DAYS_IN_YEAR + days_so_far(DAYS_IN_MONTH)
my_age_in_hours = my_age_in_days * HOURS_IN_DAY + hours_passed_this_year
my_age_in_minutes = my_age_in_hours * MINUTES_IN_HOUR + time.min
my_age_in_seconds = my_age_in_minutes * SECONDS_IN_MINUTE + time.sec

minutes_passed_this_year = hours_passed_this_year *



puts "There are #{HOURS_IN_YEAR} hours in a year!"
puts "and #{MINUTES_IN_DECADE} minutes in a decade."


puts "Ok so you where born in #{my_birth_year}..."
puts "So that would make you #{this_year - my_birth_year - 1} years old..."
puts "or #{my_age_in_days} days old..."
puts "or #{my_age_in_hours} hours old..."
puts "or #{my_age_in_minutes} minutes old.."
puts "or #{my_age_in_seconds} seconds old..."
