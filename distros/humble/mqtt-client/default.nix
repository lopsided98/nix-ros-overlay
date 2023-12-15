
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-humble-mqtt-client";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/humble/mqtt_client/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "e737e5a922bf8797cf326b80d00fb39298ed1ec19c6d435320c8e12b5792c794";
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
