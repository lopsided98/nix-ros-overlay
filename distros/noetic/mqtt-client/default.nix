
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mqtt-client-interfaces, nodelet, paho-mqtt-cpp, ros-environment, roscpp, rosfmt, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-mqtt-client";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/noetic/mqtt_client/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "b2032fc0f1e2d26f2094b6985b7aa58ec024631728bdf84d03a37d5a87920fc1";
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
