
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, webots-ros2-driver }:
buildRosPackage {
  pname = "ros-humble-webots-ros2-mavic";
  version = "2022.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/webots_ros2_mavic/2022.1.0-2.tar.gz";
    name = "2022.1.0-2.tar.gz";
    sha256 = "64441676c1603a2ee8b540018b77591dd9d7fb605a489650504fbbd596978b75";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ builtin-interfaces rclpy webots-ros2-driver ];

  meta = {
    description = ''Mavic 2 Pro robot ROS2 interface for Webots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
