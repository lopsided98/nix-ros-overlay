
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, depthai-bridge, depthai-examples, depthai-ros-msgs, joy-linux, rplidar-ros, teleop-twist-joy, tf2-ros, turtlebot4-description, turtlebot4-diagnostics, turtlebot4-node }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-bringup";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/turtlebot4_bringup/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "94d3d72b810e5d6d7ff6e5e9c856db02a92d8a8717d647ff212390a7a153b31b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ depthai-bridge depthai-examples depthai-ros-msgs joy-linux rplidar-ros teleop-twist-joy tf2-ros turtlebot4-description turtlebot4-diagnostics turtlebot4-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Robot Bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
