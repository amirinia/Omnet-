package inet.showcases.wireless.sensornetwork;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.SensorNode;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


import inet.node.inet.WirelessHost;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.integrated.IntegratedMultiVisualizer;

network SensorNetworkShowcaseA2
{
    @display("bgb=80.92,55.420002;bgi=showcases/warehouse,s");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=3.4662657,4.033473");
        }
        visualizer: IntegratedVisualizer {
            @display("p=3.4662657,9.264383");
        }
        radioMedium: ApskScalarRadioMedium {
            @display("p=3.4032426,14.0541315");
        }
        sensor4: SensorNode {
            @display("p=20.23,12.070001;i=misc/sensor2");
        }
        sensor1: SensorNode {
            @display("p=43.010002,44.2;i=misc/sensor2");
        }
        sensor2: SensorNode {
            @display("p=64.43,41.99;i=misc/sensor2");
        }
        sensor3: SensorNode {
            @display("p=64.43,12.070001;i=misc/sensor2");
        }
        gateway: SensorNode {
            @display("p=42.84,20.74;i=misc/sensorgateway");
        }
        server: StandardHost {
            @display("p=64.43,25.5");
        }
        sensor5: SensorNode {
            @display("p=21.25,25.5;i=misc/sensor2");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}


