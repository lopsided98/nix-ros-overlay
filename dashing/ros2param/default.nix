
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, pythonPackages, ros2node, ros2service, ament-xmllint, ros2cli, rcl-interfaces, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-ros2param";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2param/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0ec236992a0559de9a9d29fbe4e959e118fd9684db5694e32a7b952ed2782b9e";
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
