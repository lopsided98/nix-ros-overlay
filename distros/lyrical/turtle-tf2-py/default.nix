
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch, launch-ros, python3Packages, rclpy, tf2-ros, turtlesim-msgs }:
buildRosPackage {
  pname = "ros-lyrical-turtle-tf2-py";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/lyrical/turtle_tf2_py/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "1c4d74b0a156837789b0b311e1b4cb5d1c5bae369020d2d93ae2640a38994c02";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros python3Packages.numpy rclpy tf2-ros turtlesim-msgs ];

  meta = {
    description = "turtle_tf2_py demonstrates how to write a ROS2 Python tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
