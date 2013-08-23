Serial port reading with timestamp information (serialreadts)
=============================================================

This is a very small piece of code that reads from the serial port (or I believe any
character device, or even pipe) and places a timestamp in front of each lines
in the form of \[time elapsed since the start of the program\]. We use it to
pretty print the output of Contiki when running on Redbee Econotag nodes.

Here is an example:

* the normal output on the serial port:

<pre>
	Rime started with address 00:50:C2:A8:CE:71:50:52
	nullmac nullrdc, channel check rate 100 Hz, radio channel 26
	Tentative link-local IPv6 address fe80:0000:0000:0000:0250:c2a8:ce71:5052
	Tentative global IPv6 address aaaa:0000:0000:0000:0250:c2a8:ce71:5052
	Starting 'UDP client process'
	UDP client process started
	Client IPv6 addresses: aaaa::250:c2a8:ce71:5052
</pre>


* one of the possible outputs using serialreadts:

<pre>
	[3.01005006]Rime started with address 00:50:C2:A8:CE:71:50:52
	[3.01642799]nullmac nullrdc, channel check rate 100 Hz, radio channel 26
	[3.02405190]Tentative link-local IPv6 address fe80:0000:0000:0000:0250:c2a8:ce71:5052
	[3.03329802]Tentative global IPv6 address aaaa:0000:0000:0000:0250:c2a8:ce71:5052
	[3.04204893]Starting 'UDP client process'
	[3.04579806]UDP client process started
	[3.04917407]Client IPv6 addresses: aaaa::250:c2a8:ce71:5052
</pre>


In order to run the program, just type in:

    python serialreadts.py

Use ctrl+c when in order to stop the program.

Conditions Of Use
-----------------

<em>This software was developed by employees of the National Institute of Standards
and Technology (NIST), and others. This software has been contributed to the
public domain. Pursuant to title 15 United States Code Section 105, works of
NIST employees are not subject to copyright protection in the United States and
are considered to be in the public domain. As a result, a formal license is not
needed to use this software.

This software is provided "AS IS." NIST MAKES NO WARRANTY OF ANY KIND, EXPRESS,
IMPLIED OR STATUTORY, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTY OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT AND DATA
ACCURACY. NIST does not warrant or make any representations regarding the use
of the software or the results thereof, including but not limited to the
correctness, accuracy, reliability or usefulness of this software.</em>
