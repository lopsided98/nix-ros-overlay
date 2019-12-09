
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, python3Packages, ros-testing, ament-copyright, std-msgs, rosidl-runtime-py, pythonPackages, test-msgs, ament-xmllint, ros2cli, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-eloquent-ros2topic";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2topic/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "c5cb6ad3ba81a772a5b66a09188176be402282aace4158bb2a8e82fd52cf33aa";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ geometry-msgs ament-copyright ros-testing std-msgs test-msgs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ python3Packages.pyyaml rosidl-runtime-py python3Packages.numpy ros2cli rclpy ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
