
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mqtt-client";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mqtt_client-release/archive/release/rolling/mqtt_client/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "552e5e2554452858ce65b9c9c1fbdba1135c077f0965c09d4f5302386853d84b";
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
