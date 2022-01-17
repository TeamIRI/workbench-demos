This proof of concept demonstrates the use of RowGen job scripts (x12_270_no_dependents.rcl and x12_270_w_dependents.rcl) to generate 270 X12 messages.

X12 messages are broken down into message segments (e.g. HL, NM1, EB) with each segment
containing fields that are separated using the asterisk delimiter.
Depending on the X12 message type, there will be segments that are either optional or required.
Likewise, every X12 segment will have fields that will either be optional are required based on the segment type.

The RowGen job script creates X12 segments by specifying .ddf files located in a metadata folder.
In this POC, ddf files were created to generate segments for ISA, GS, ST, BHT, HL, NM1, DMG, TRN, EQ, SE, GE, and IEA.

In the ISA ddf file the first field EL_TYPE, lists the segment types that will be looped through when generating
the X12 message ("ISA", "GS", "ST" etc). The RowGen job script will contain an OUTFILE section for each individual segment.
The INCOLLECT option in the INFILE section dictates the amount of times the script will loop through all the OUTFILE sections
in the script. An INCLUDE WHERE EL_TYPE EQ statement is included to append only one segment type and it's respective fields to
the X12 message for that particular iteration of the loop.

Note that the INCOLLECT amount specified should be a multiple of the number of ddf files you have specified or the last X12
message to be generated will not contain all the provided X12 segment types.

The X12_270 project contains a simple batch script that will execute the two RowGen scripts.
One .rcl script will create an 270 X12 message where a dependent is present the other .rcl script will
create a 270 message with no dependents.
To run the RowGen job:
- Right click on the bat file > Run As > 1 Batch Program.




