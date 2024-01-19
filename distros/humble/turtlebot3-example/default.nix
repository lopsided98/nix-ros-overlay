
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclpy, sensor-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot3-example";
  version = "2.1.5-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/humble/turtlebot3_example/2.1.5-1.tar.gz";
    name = "2.1.5-1.tar.gz";
    sha256 = "22e2c299d1330b74a496a92129cd7821413b02d9fabeb8128680e5c16b753e34";
  };

  buildType = "ament_python";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclpy sensor-msgs turtlebot3-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides four basic examples for TurtleBot3 (i.e., interactive marker, object detection, patrol and position control).'';
    license = with lib.licenses; [ asl20 ];
  };
}
