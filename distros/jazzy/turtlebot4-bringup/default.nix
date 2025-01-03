
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, create3-republisher, depthai-bridge, depthai-examples, depthai-ros-driver, depthai-ros-msgs, joy-linux, nav2-common, rplidar-ros, teleop-twist-joy, tf2-ros, turtlebot4-description, turtlebot4-diagnostics, turtlebot4-node }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-bringup";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/jazzy/turtlebot4_bringup/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "82ae867e26df143be7121083a498bfdfcae72d72ed9580470ee2e58d8460fc95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ create3-republisher depthai-bridge depthai-examples depthai-ros-driver depthai-ros-msgs joy-linux nav2-common rplidar-ros teleop-twist-joy tf2-ros turtlebot4-description turtlebot4-diagnostics turtlebot4-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Turtlebot4 Robot Bringup";
    license = with lib.licenses; [ asl20 ];
  };
}
