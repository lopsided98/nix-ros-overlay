
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-node";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/galactic/turtlebot4_node/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "292334aba2cd09be5ebea47d25627b49f151c749dfcd315dc43f23ff8e699064";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-msgs rclcpp rclcpp-action rcutils sensor-msgs std-msgs turtlebot4-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Node'';
    license = with lib.licenses; [ asl20 ];
  };
}
