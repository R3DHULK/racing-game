bike1 <- list(name = "Bike 1", speed = 20, distance = 0)
bike2 <- list(name = "Bike 2", speed = 25, distance = 0)
bike3 <- list(name = "Bike 3", speed = 18, distance = 0)

move_bike <- function(bike) {
  bike$distance <- bike$distance + bike$speed * sample(1:5, 1)
}

print_position <- function(bike) {
  cat(paste(bike$name, "is at position", bike$distance, ".\n"))
}

# Start the race
cat("Let's start the race!\n")
while (bike1$distance < 1000 && bike2$distance < 1000 && bike3$distance < 1000) {
  move_bike(bike1)
  move_bike(bike2)
  move_bike(bike3)
  print_position(bike1)
  print_position(bike2)
  print_position(bike3)
  cat("\n")
}

# End of race
cat("Race is over!\n")
winner <- list(name = "", distance = 0)
if (bike1$distance > bike2$distance && bike1$distance > bike3$distance) {
  winner$name <- bike1$name
  winner$distance <- bike1$distance
} else if (bike2$distance > bike1$distance && bike2$distance > bike3$distance) {
  winner$name <- bike2$name
  winner$distance <- bike2$distance
} else {
  winner$name <- bike3$name
  winner$distance <- bike3$distance
}
cat(paste(winner$name, "wins!\n"))
