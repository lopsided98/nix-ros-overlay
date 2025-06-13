
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-mqtt-client";
  version = "2.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/kilted/mqtt_client/2.3.0-2.tar.gz";
    name = "2.3.0-2.tar.gz";
    sha256 = "784ec92e04ca85afe65c066300b4c219ddc55be5b36e56486a78b230a69e5a68";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fmt mqtt-client-interfaces paho-mqtt-c paho-mqtt-cpp rclcpp rclcpp-components rcpputils ros-environment std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Node that enables connected ROS-based devices or robots to exchange ROS messages via an MQTT broker using the MQTT protocol.";
    license = with lib.licenses; [ mit ];
  };
}
