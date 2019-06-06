//package inet.showcases.wireless.sensornetwork;
package inet.showcases.wireless.ieee802154m;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.SensorNode;
import inet.node.inet.StandardHost;
import inet.node.inet.WirelessHost;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.physicallayer.ieee802154.bitlevel.Ieee802154UwbIrRadioMedium;
import inet.physicallayer.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.integrated.IntegratedMultiVisualizer;
import inet.visualizer.integrated.IntegratedVisualizer;


network SensorNetworkShowcaseAn
{
    @display("bgb=87.55,64.94;bgi=showcases/warehouse,s");
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
            @display("p=23.970001,14.110001;i=misc/sensor2");
        }
        sensor1: SensorNode {
            @display("p=18.02,36.89;i=misc/sensor2");
        }
        sensor2: SensorNode {
            @display("p=41.82,48.96;i=misc/sensor2");
        }
        sensor3: SensorNode {
            @display("p=38.93,13.09;i=misc/sensor2");
        }
        gateway: SensorNode {
            @display("p=40.63,30.09;i=misc/sensorgateway");
        }
        server: StandardHost {
            @display("p=68.85,36.72");
        }
    connections:
        gateway.ethg++ <--> Eth100M <--> server.ethg++;
}
