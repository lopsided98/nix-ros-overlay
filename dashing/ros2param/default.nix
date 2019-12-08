
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-xmllint, ament-flake8, ros2node, rclpy, pythonPackages, ament-pep257, rcl-interfaces, ament-copyright, ros2service, ros2cli }:
buildRosPackage {
  pname = "ros-dashing-ros2param";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2param/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "0ec236992a0559de9a9d29fbe4e959e118fd9684db5694e32a7b952ed2782b9e";
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
