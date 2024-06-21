
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fmt, mqtt-client-interfaces, nodelet, paho-mqtt-cpp, ros-environment, roscpp, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "58412b0cdc69473da75d0720ee93563b85073d2208a8d000c0e849d9a69d1bfb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ fmt mqtt-client-interfaces nodelet paho-mqtt-cpp ros-environment roscpp std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.";
    license = with lib.licenses; [ mit ];
  };
}
