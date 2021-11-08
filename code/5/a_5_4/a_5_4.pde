void setup(){
  for (int reihe = 1; reihe < 11; reihe++){
    println("Die "+reihe+"er-Reihe:");
    for (int mult = 1; mult < 11; mult++){
      println(reihe+" x "+mult+" ist "+ reihe*mult);
    }
  }
}