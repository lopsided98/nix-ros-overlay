
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rcpputils, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-iron-mqtt-client";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/iron/mqtt_client/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "572ed4627fe043992097f9c0c9a7b322609dc3198828cb1921be27334a8d8dda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ mqtt-client-interfaces paho-mqtt-c paho-mqtt-cpp rclcpp rcpputils ros-environment std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
