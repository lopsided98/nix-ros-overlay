
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, ros2node, rclpy, pythonPackages, lifecycle-msgs, ament-pep257, ament-copyright, ros2service, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2lifecycle";
  version = "0.7.4-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2lifecycle/0.7.4-1.tar.gz;
    sha256 = "c50183f4158a5c8b0eb59854bbb4a683bf60e4eb002af6990c886048efdbe377";
  };

  buildType = "ament_python";
  buildInputs = [ rclpy ros2cli ];
  checkInputs = [ ament-xmllint ament-flake8 pythonPackages.pytest ament-pep257 ament-copyright ];
  propagatedBuildInputs = [ ros2node rclpy lifecycle-msgs ros2service ros2cli ];

  meta = {
    description = ''The lifecycle command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
