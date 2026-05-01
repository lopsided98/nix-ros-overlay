
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mqtt-client";
  version = "2.4.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/lyrical/mqtt_client/2.4.1-4.tar.gz";
    name = "2.4.1-4.tar.gz";
    sha256 = "fb701263da69b78be9ba639c6f55f42c97746a45490408d6d6b4a4acfedfb49e";
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
