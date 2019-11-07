
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, ros2node, rclpy, pythonPackages, lifecycle-msgs, ament-pep257, ament-copyright, ros2service, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2lifecycle";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2lifecycle/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "376de10ffc477f5dd824c1e65eb40d2badd0648f3757fe051a9f5d34052789b9";
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
