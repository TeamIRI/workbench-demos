This proof of concept demonstrates the use of RowGen job script (adt_job.rcl) to generate ADT HL7 messages.

HL7 messages are broken down into message segments (e.g. PID, NK1, EVN) with each segment
containing fields that are separated using the pipe delimiter.
Depending on the HL7 message type, there will be segments that are either optional or required.
Likewise, every HL7 segment will have fields that will either be optional are required based on the segment type.

The RowGen job script creates HL7 segments by specifying .ddf files located in a metadata folder.
In this POC, ddf files were created to generate segments for MSH, EVN, PID, PV1
(these four are required in an ADT message) and IN1 (frequently seen in an ADT message) segment types.

See this link (https://hl7-definition.caristix.com/v2/HL7v2.5.1/TriggerEvents/ADT_A04) for documentation on segments
and fields within those segments.

In the MSH ddf file the first field EL_TYPE, lists the segment types that will be looped through when generating
the HL7 message ("MSH", "EVN", "PID" etc). The RowGen job script will contain an OUTFILE section for each individual segment.
The INCOLLECT option in the INFILE section dictates the amount of times the script will loop through all the OUTFILE sections
in the script. An INCLUDE WHERE EL_TYPE EQ statement is included to append only one segment type and it's respective fields to
the HL7 message for that particular iteration of the loop.

Note that the INCOLLECT amount specified should be a multiple of the number of ddf files you have specified or the last HL7
message to be generated will not contain all the provided HL7 segment types.

The HL7_ADT_A04 project contains a simple batch script that writes each HL7 message to a separate file.
To run the RowGen job:
- Right click on the bat file > Run As > 1 Batch Program.




