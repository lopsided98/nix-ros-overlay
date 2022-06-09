
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, depthai-bridge, depthai-examples, depthai-ros-msgs, joy-linux, rplidar-ros, teleop-twist-joy, tf2-ros, turtlebot4-description, turtlebot4-diagnostics, turtlebot4-node }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-bringup";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/turtlebot4_bringup/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "a9dbe6210696e5aa1ab41e9700a449640f2e35cf8c4a4500620e4b3a08dbb03f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ depthai-bridge depthai-examples depthai-ros-msgs joy-linux rplidar-ros teleop-twist-joy tf2-ros turtlebot4-description turtlebot4-diagnostics turtlebot4-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Turtlebot4 Robot Bringup'';
    license = with lib.licenses; [ asl20 ];
  };
}
