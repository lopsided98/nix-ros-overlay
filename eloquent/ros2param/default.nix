
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ros2node, ros2service, ament-xmllint, ros2cli, rcl-interfaces, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2param";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2param/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "d0c94e3dfdc919b140df2d26ca79691551320d862637c7974bb117f34b0e3dfe";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rcl-interfaces rclpy ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2node ros2service ros2cli rcl-interfaces rclpy ];

  meta = {
    description = ''The param command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
