
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, mqtt-client-interfaces, paho-mqtt-c, paho-mqtt-cpp, rclcpp, rclcpp-components, rcpputils, ros-environment, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-mqtt-client";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ika-rwth-aachen/mqtt_client-release/archive/release/rolling/mqtt_client/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "f856d8486ffde2d4eeeabfa38f8c5445b7288953492fe638c30b05a4a8a58892";
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
