
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, libgpiod_1, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, turtlebot4-msgs, turtlebot4-node }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-base";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/jazzy/turtlebot4_base/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "f8e68a04f1139ebc3ace42ef046eb27ad41b8460c9154289da3b873f95f20244";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-msgs libgpiod_1 rclcpp rclcpp-action rcutils sensor-msgs std-msgs turtlebot4-msgs turtlebot4-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Base Node";
    license = with lib.licenses; [ asl20 ];
  };
}
