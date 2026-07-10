
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-mqtt-client";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/kilted/mqtt_client/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "346507f4904c1879154cbd3e224f25bcfd4be58faaa2e91556ebcfa43d0d115b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fmt mqtt-client-interfaces paho-mqtt-c paho-mqtt-cpp rclcpp rclcpp-components rcpputils std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.";
    license = with lib.licenses; [ mit ];
  };
}
