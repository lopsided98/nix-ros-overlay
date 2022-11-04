
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nodelet, paho-mqtt-cpp, roscpp, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e43c7965db804290c24eeea06cac90f64a0ec07e60de8a74e721cd560c995fb8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ message-generation message-runtime nodelet paho-mqtt-cpp roscpp std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a nodelet that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
