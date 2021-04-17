// sample for condition inference change
int condition_subsuming_change () {
  int a = 15;
  int retval = 20;

  if (a > 10) {
    retval = 10;
    if (a > 5) {
      retval = 15;
    }
  }
  return retval;
}