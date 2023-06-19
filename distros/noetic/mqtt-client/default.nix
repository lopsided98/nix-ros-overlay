
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mqtt-client-interfaces, nodelet, paho-mqtt-cpp, ros-environment, roscpp, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "5adf70e99307666237469f599cda60a2f086f92dae8f0ef95354be448e888217";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mqtt-client-interfaces nodelet paho-mqtt-cpp ros-environment roscpp std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
