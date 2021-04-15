// sample for conditional branch
int condition_branch () {
	int a = 5;
	int retval = 20;

	if (a > 10) {
		retval = 10;
	} else if (a > 5) {
		retval = 15;
	}

	// dummy for showing the predicate
	int b = 10;
	if (b >= 10) {
		b = 20;
	}

	int c = 8; 
	if (c < 10) {
		c = 5;
	}

        if (b < c) {
                retval = 25;
        }

	return retval;
}

// sample for constant propagation
int constant_test () {
	int a = 5;
	int retval = 20;

	if (a > 10) {
		retval = 10;
	}
	return retval;
}

// sample for a = b
int assignment_test () {
	int a = 5;
	int retval = 20;

	int b = a;
	if (b > 10) {
		retval = 10;
	}
	return retval;
}

// sample for a = b + 10
int assignment_addition_test () {
	int a = 5;
	int retval = 20;

	int b = a + 10;
	if (b > 10) {
		retval = 10;
	}
	return retval;
}

// sample for c = a + b
int assignment_addition_multiple_test () {
	int a = 5;
	int b = 10;
	int retval = 20;

	int c = a + b;
	if (c > 10) {
		retval = 10;
	}
	return retval;
}

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

// sample for condition inference unchange
int condition_subsuming_unchange () {
	int a = 15;
	int retval = 20;

	if (a > 5) {
		retval = 10;
		if (a > 10) {
			retval = 15;
		}
	}
	return retval;
}

// sample for undef path
int condition_subsuming_undef () {
	int a = 10;
	int retval = 20;

	if (a < 20) {
		retval = 10;
		if (a > 5) {
			retval = 15;
		}
	}
	return retval;
}

// sample for passing parameter
int pass_parameter_undef (int a) {
	int retval = 20;

	if (a > 10) {
		retval = 10;
	}
	return retval;
}

// complex case