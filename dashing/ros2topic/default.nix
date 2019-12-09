
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, rosidl-runtime-py, pythonPackages, ament-xmllint, ros2cli, ament-pep257, ros2msg, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-ros2topic";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2topic/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "43e8621002238c52b75e7e3cfa86ceda25b902e10a7de33835960d5b115895eb";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ python3Packages.pyyaml rosidl-runtime-py python3Packages.numpy ros2cli ros2msg rclpy ];

  meta = {
    description = ''The topic command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
