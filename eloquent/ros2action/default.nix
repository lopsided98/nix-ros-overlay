
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-testing, ament-copyright, rosidl-runtime-py, pythonPackages, ament-flake8, test-msgs, ament-xmllint, ros2cli, ament-pep257, rclpy, ament-index-python, action-msgs }:
buildRosPackage {
  pname = "ros-eloquent-ros2action";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2action/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "6a67b2bc605f6a5bb40db2d65b543702f4bbfbdd1a52d82acdf68903d86ad0bb";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ ament-copyright ros-testing test-msgs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ rosidl-runtime-py ros2cli rclpy ament-index-python action-msgs ];

  meta = {
    description = ''The action command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
