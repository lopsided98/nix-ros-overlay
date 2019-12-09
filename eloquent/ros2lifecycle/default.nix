
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ros-testing, ros2lifecycle-test-fixtures, pythonPackages, ros2node, ament-xmllint, ros2cli, ros2service, ament-pep257, rclpy, ament-flake8, lifecycle-msgs }:
buildRosPackage {
  pname = "ros-eloquent-ros2lifecycle";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2lifecycle/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "95200f7f13576c59265c1c1ee9e9e935b9593c83425cfecf0a21c2dd81c39088";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ ros-testing ament-copyright ros2lifecycle-test-fixtures ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ ros2node ros2service ros2cli rclpy lifecycle-msgs ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
