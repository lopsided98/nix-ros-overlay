
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mqtt-client-interfaces, nodelet, paho-mqtt-cpp, ros-environment, roscpp, rosfmt, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "cd99b24d1ed0f4fa3e839c503be9d86adaf8fb99dee2cb0ac07e99ae4280f2f6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mqtt-client-interfaces nodelet paho-mqtt-cpp ros-environment roscpp rosfmt std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
