
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, libgpiod, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, turtlebot4-msgs, turtlebot4-node }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-base";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/turtlebot4_base/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "7b2663cb054c1aacb40b5360f2f6a1e8ceffc67879971930aed94a8aa70a9a7d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-msgs libgpiod rclcpp rclcpp-action rcutils sensor-msgs std-msgs turtlebot4-msgs turtlebot4-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Base Node'';
    license = with lib.licenses; [ asl20 ];
  };
}
