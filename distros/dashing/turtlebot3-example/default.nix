
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclpy, sensor-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-dashing-turtlebot3-example";
  version = "2.1.1-r2";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/dashing/turtlebot3_example/2.1.1-2.tar.gz";
    name = "2.1.1-2.tar.gz";
    sha256 = "70e9a98cbdb5ec10a02457d985deaf3e7b6a917cd2721bc938024e60b06636f6";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rclpy sensor-msgs turtlebot3-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides four basic examples for TurtleBot3 (i.e., interactive marker, object detection, patrol and position control).'';
    license = with lib.licenses; [ asl20 ];
  };
}
