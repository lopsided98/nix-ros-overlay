
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, create3-republisher, depthai-bridge, depthai-examples, depthai-ros-driver, depthai-ros-msgs, joy-linux, nav2-common, rplidar-ros, teleop-twist-joy, tf2-ros, turtlebot4-description, turtlebot4-diagnostics, turtlebot4-node }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-bringup";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_bringup/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "d1bbeed469da59fb8899be522315c19a12dfbe25ffd808d4e02a2d4cb13bab02";
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
