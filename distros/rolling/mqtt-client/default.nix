
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mqtt-client";
  version = "2.4.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/rolling/mqtt_client/2.4.2-2.tar.gz";
    name = "2.4.2-2.tar.gz";
    sha256 = "9010390f636fd09197d63760481522c148fde4ceef24473023303d9f4ae13122";
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
