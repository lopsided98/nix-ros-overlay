
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-iron-mqtt-client";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/iron/mqtt_client/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "55d5a46ba0595cdf74cd67a4f73ee84f8b8251dcfe36dc5f5941c11df5936b74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fmt mqtt-client-interfaces paho-mqtt-c paho-mqtt-cpp rclcpp rclcpp-components rcpputils ros-environment std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.'';
    license = with lib.licenses; [ mit ];
  };
}
