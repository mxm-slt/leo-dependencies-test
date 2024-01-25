# leo_dependencies_test.aleo

Program C depends on Program B which depends on Program A

The issues seems to be in this transition of Program B which takes two arguments of RecordA type. 
```
transition transition_b(a1: program_a.aleo/RecordA, a2: program_a.aleo/RecordA)
```
If you remove _a2_ there is no error.

## Steps to reproduce
```bash
git clone
cd program_c
leo build
```

The error is
```
Error [EAST0372009]: variable `dummy` shadowed by
    --> leo_dependencies_test/program_c/../program_b/../program_a/src/main.leo:1:1
```
