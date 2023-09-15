
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rcpputils, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mqtt-client";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/rolling/mqtt_client/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "c84ee4cb24b3723e622ef88d2dc6387193e89d10f8ef48af9c748da1a870bd4c";
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
