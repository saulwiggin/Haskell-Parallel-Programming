class Account {
	int balance;
	synchronized void withdraw( int n ) {
		balance = balance - n; }
	void deposit( int n ) {
		withdraw( -n ); }
	}