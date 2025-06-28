
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-mqtt-client";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/kilted/mqtt_client/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "876a4959edec7d48b00014bc9df736bc0ee23dfc0a66c7158ea2736b258e9f19";
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
