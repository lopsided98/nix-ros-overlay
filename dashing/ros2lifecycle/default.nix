
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, ros2node, rclpy, pythonPackages, lifecycle-msgs, ament-pep257, ament-copyright, ros2service, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2lifecycle";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2lifecycle/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "acb86a11c4db2d3664ec3dd619179c35f29c2e65679b353fe0df892b73698cc8";
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
