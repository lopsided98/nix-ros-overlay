
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, paho-mqtt-cpp, roscpp, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "7378c05e52e8b22b7b71120a05253c87a1a0b83c7ba6374b5a055b5bd0f80b3c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime nodelet paho-mqtt-cpp roscpp std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a nodelet that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
