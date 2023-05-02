
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, libgpiod, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, turtlebot4-msgs, turtlebot4-node }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-base";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_base/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "50feccadb6791bbab01d60f169314fcc4071a3659d975d76c8d65badf3c9d258";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-msgs libgpiod rclcpp rclcpp-action rcutils sensor-msgs std-msgs turtlebot4-msgs turtlebot4-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Base Node'';
    license = with lib.licenses; [ asl20 ];
  };
}
