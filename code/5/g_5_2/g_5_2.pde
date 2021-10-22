int n = 7;
int sum = 1;
void setup(){
  for(int i = 1; i <= n; i++){
    sum = sum * i;
  }
  print(sum);
}
