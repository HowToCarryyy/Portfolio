int[] bar = {2, 4, 6};
void setup() {
  bar[2] = bar[0] * bar[1];
  println(bar);
}