
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, rclpy, sensor-msgs, turtlebot3-msgs }:
buildRosPackage {
  pname = "ros-foxy-turtlebot3-example";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robotis-ros2-release/turtlebot3-release/archive/release/foxy/turtlebot3_example/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "5a4ef658d6bc1465b9f8966ae8972a979e3218188e63694c71b38ac2a2cafdd6";
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
