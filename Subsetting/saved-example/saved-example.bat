@echo off
C:
cd "C:\IRI\CoSort95\workbench\workspace\Subsetting\saved-example"
sqlplus scott/tiger@XE < DisableRelatedFK.sql
sortcl /SPECIFICATION=saved-example_script0.scl
sortcl /SPECIFICATION=saved-example_script1.scl
sortcl /SPECIFICATION=saved-example_script2.scl
sortcl /SPECIFICATION=saved-example_script3.scl
sortcl /SPECIFICATION=saved-example_script4.scl
sortcl /SPECIFICATION=saved-example_script5.scl
sortcl /SPECIFICATION=saved-example_script6.scl
sortcl /SPECIFICATION=saved-example_script7.scl
sqlplus scott/tiger@XE < EnableRelatedFK.sql