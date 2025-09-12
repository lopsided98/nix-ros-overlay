
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, irobot-create-msgs, rclcpp, rclcpp-action, rcutils, sensor-msgs, std-msgs, std-srvs, turtlebot4-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-node";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4-release/archive/release/jazzy/turtlebot4_node/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "2030b08b9d505e0dea523ba188003a0d49c9e06685020850343b79cb3705e70c";
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
