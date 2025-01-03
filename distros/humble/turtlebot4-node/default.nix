
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, std-srvs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-node";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/humble/turtlebot4_node/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "0b6cb07b96400c8de0a39b7457eb5e3f0792e57ac6e64cfcff8b121ed0273cb4";
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
