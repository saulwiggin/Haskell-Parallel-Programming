runPar $ do

	Ivars ← new

	jvars ← new

	fork (put I (!n))

	fork (put j (!m))

	a ← get I

	b ← get j

	return (a+b)