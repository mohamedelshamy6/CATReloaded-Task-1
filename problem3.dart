void main(List<String> args) {
  int distance = 13,
      online_cost = 6,
      first_kilo = 7,
      afterward = 4,
      afterward_cost = (distance - first_kilo) * afterward,
      classic_speed = 4,
      base_fare = 2,
      minute_cost = 1,
      each_kilo = 2,
      total_online_cost = online_cost + afterward_cost;

  double classic_time = distance / classic_speed;
  double total_classic_cost =
      (base_fare + (minute_cost * classic_time) + (each_kilo * distance));

  if (total_online_cost <= total_classic_cost) {
    print("Online taxi. ");
  } else {
    print("Classic taxi. ");
  }
}
