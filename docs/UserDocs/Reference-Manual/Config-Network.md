# Config - Network

This configuration optional group sets the network interface to a running ImgArchive application.

This enables status events and remote commands to be sent and received by the ImgArchive application.

This is used to both monitor and control a running ImgArchive application.

Typically the ImgArchive application may be running for sometime processing images, the progress may be monitored using the console screen when run as a stand-alone application  However there may be times when this may be replaced by an event port that sends status events to an external application. In addition, the ImgArchive application may need to be paused or stopped for some reason and which case the network command interface may be used to send a command to the ImgArchive application.    

--network (-N) :
Configure network parameters
Syntax:
--network <Option=Value>
[EventsOn=<Enabled | Disabled>] | [CommandsOn=<Enabled | Disabled>] |
[EventsPort=<port number>] | [EventsAddress=<network address>] |
[CommandPort=<port number>]

 

 

 