
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, rosidl-runtime-py, pythonPackages, ament-flake8, test-msgs, ament-xmllint, ros2cli, ament-pep257, rclpy, ament-index-python, action-msgs }:
buildRosPackage {
  pname = "ros-dashing-ros2action";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2action/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "3d76762fc41d3aeb3a11e579fcd516623427d61f43e05ee4b13890ab157d0c98";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli rclpy ];
  checkInputs = [ ament-copyright test-msgs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ rosidl-runtime-py ros2cli rclpy ament-index-python action-msgs ];

  meta = {
    description = ''The action command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
