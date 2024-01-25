import program_a.aleo;

program program_b.aleo {

	transition transition_b(a1: program_a.aleo/RecordA, a2: program_a.aleo/RecordA) {
		assert(true);
	}

}