
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclpy, sensor-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-example";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_example/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "913763aa7304e74dd6fafc4cd7cd2cdbc8bdc41da60086c173902a8621d8476b";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclpy sensor-msgs turtlebot3-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides four basic examples for TurtleBot3 (i.e., interactive marker, object detection, patrol and position control).'';
    license = with lib.licenses; [ asl20 ];
  };
}
