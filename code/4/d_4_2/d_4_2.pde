String n1 = "Donald Duck";
String n2 = "Dagobert Duck";
String n1N;
String n2N;
int Npos;
int Npos2;
void setup() {
  Npos = n1.indexOf(" ");
  n1N = n1.substring(Npos);
  Npos2 = n2.indexOf(" ");
  n2N = n2.substring(Npos2);
  if (n1N.equals(n2N)) {
    print("Die beiden Personen haben den gleichen Nachnamen.");
  } else {
    print("Die beiden Personen haben nicht den gleichen Nachnamen.");
  }
}