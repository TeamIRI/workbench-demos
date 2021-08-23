# @echo off
sqlplus scott/tiger@localhost/XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=saved-example_script0.scl
sortcl /SPECIFICATION=saved-example_script1.scl
sortcl /SPECIFICATION=saved-example_script2.scl
sortcl /SPECIFICATION=saved-example_script3.scl
sortcl /SPECIFICATION=saved-example_script4.scl
sortcl /SPECIFICATION=saved-example_script5.scl
sortcl /SPECIFICATION=saved-example_script6.scl
sortcl /SPECIFICATION=saved-example_script7.scl
sqlplus scott/tiger@localhost/XE < EnableRelatedFK.sql
echo Job Ended
