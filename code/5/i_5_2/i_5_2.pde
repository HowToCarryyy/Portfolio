int j = 1;
int k = 0;
int l;
void setup() {
  for (int i = 0; i <= 10; i++) {
    l = j+k;
    k = j;
    j = l;
    print(j+" ");
  }
}