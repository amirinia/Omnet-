package inet.showcases.wireless.sensornetwork;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.inet.StandardHost;
import inet.node.inet.SensorNode;
import inet.physicallayer.apskradio.packetlevel.ApskScalarRadioMedium;
import inet.visualizer.integrated.IntegratedVisualizer;


network SensorNetworkShowcaseA3
{
    @display("bgb=60,30;bgi=showcases/warehouse,s");
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
            @display("p=14.62,6.46;i=misc/sensor2");
        }
        sensor1: SensorNode {
            @display("p=30.26,21.93;i=misc/sensor2");
        }
        sensor2: SensorNode {
            @display("p=46.41,21.93;i=misc/sensor2");
        }
        sensor3: SensorNode {
            @display("p=40.46,6.46;i=misc/sensor2");
        }
        sensor5: SensorNode {
            @display("p=13.09,20.74;i=misc/sensor2");
        }
        CH: SensorNode {
            @display("p=28.5,13;i=misc/sensorgateway");
        }
        controller: StandardHost {
            @display("p=56.440002,14.110001");
        }
    connections:
        CH.ethg++ <--> Eth100M <--> controller.ethg++;
}

