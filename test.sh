#!/bin/bash
val = 'ls'
for v in ${val}
do 
	if [${v} == "test.db"]
	then
		rm test.db
		echo "rm test.db"
	fi
done

sqlite test.db << EOF
create table test (name char, sex char);
insert into test values("yang", "nan");
select * from test;
.quit
EOF

