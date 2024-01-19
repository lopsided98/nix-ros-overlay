
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch, launch-ros, python3Packages, pythonPackages, rclpy, tf2-ros, turtlesim }:
buildRosPackage {
  pname = "ros-rolling-turtle-tf2-py";
  version = "0.3.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry_tutorials-release/archive/release/rolling/turtle_tf2_py/0.3.6-3.tar.gz";
    name = "0.3.6-3.tar.gz";
    sha256 = "5f938a400b3c97ef9b255de96ca3ec62e92cc467e1b5a409d289cf27871430a9";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch launch-ros python3Packages.numpy rclpy tf2-ros turtlesim ];

  meta = {
    description = ''turtle_tf2_py demonstrates how to write a ROS2 Python tf2 broadcaster and listener with the turtlesim. The turtle_tf2_listener commands turtle2 to follow turtle1 around as you drive turtle1 using the keyboard.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
