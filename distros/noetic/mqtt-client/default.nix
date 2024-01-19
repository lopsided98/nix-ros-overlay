
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mqtt-client-interfaces, nodelet, paho-mqtt-cpp, ros-environment, roscpp, rosfmt, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client";
  version = "2.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client/2.2.0-2.tar.gz";
    name = "2.2.0-2.tar.gz";
    sha256 = "5434f3f30f25a1434dc28db0efad124fef097437d69331866bc64b7a6684c9c5";
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
