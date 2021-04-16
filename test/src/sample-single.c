// sample for constant propagation
int constant_test () {
	int a = 5;
	int retval = 20;

	if (a > 10) {
		retval = 10;
	}
	return retval;
}

// complex case