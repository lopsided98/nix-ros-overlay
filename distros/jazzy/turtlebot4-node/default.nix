
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, std-srvs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-node";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/jazzy/turtlebot4_node/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "460ea5fec1128ba3e6da87885b3f0c99ac8555f01f8f1db5461eb82f973f5619";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ irobot-create-msgs rclcpp rclcpp-action rcutils sensor-msgs std-msgs std-srvs turtlebot4-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Node";
    license = with lib.licenses; [ asl20 ];
  };
}
