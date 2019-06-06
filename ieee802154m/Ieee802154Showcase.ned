//package inet.showcases.wireless.ieee802154m;
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
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;


network Ieee802154Showcasem
{
    @display("bgb=85.200005,62.550003;bgi=showcases/floorplan,s");
    submodules:
        sensor1: SensorNode {
            @display("p=12.150001,12.3;i=misc/sensor");
        }
        sensor2: SensorNode {
            @display("p=12.150001,51.45;i=misc/sensor");
        }
        sensor3: SensorNode {
            @display("p=65.700005,51.45;i=misc/sensor");
        }
        sensor4: SensorNode {
            @display("p=75.3,22.5;i=misc/sensor");
        }

        CusterHead: SensorNode {
            @display("p=39.600002,36.600002;i=misc/sensorgateway");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=18,0.75");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=8.400001,2.7");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=29.25,2.8500001");
        }
        sensorNode: SensorNode {
            @display("p=38.55,12.3");
        }

        drone: StandardHost {
            @display("p=4.2000003,35.100002;i=misc/drone");
        }
}
