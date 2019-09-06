
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, ros2node, rclpy, pythonPackages, ament-pep257, rcl-interfaces, ament-copyright, ros2service, ros2cli }:
buildRosPackage rec {
  pname = "ros-dashing-ros2param";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2param/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "8f1436dc033d317b9fdafdfa4c8084ca64c5b6b81f43154bc8bfb4e627f95cf5";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy rcl-interfaces ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ ros2node rclpy rcl-interfaces ros2service ros2cli ];

  meta = {
    description = ''The param command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
