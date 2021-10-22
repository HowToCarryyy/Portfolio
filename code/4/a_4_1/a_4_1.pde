PVector v1 = new PVector(5, 5);
PVector v2 = new PVector(3, 2);
void setup(){
  println(v1.add(v2));
  println(v1.sub(v2));
  // Das Ergebnis der ersten Subtraktion ist das gleiche wie das ursprüngliche Ergebnis von v1, da der PVector mit dem ergebnis v1+v2 rechnet.
  // Also (v1+v2)-v2.
}