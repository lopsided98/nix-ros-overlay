
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, ament-xmllint, pythonPackages, ros-testing, ros2cli, rosidl-runtime-py, test-msgs }:
buildRosPackage {
  pname = "ros-foxy-ros2interface";
  version = "0.9.12-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/foxy/ros2interface/0.9.12-1.tar.gz";
    name = "0.9.12-1.tar.gz";
    sha256 = "6114af9426012aa3b39a40c69d628693aac0735bbd56a9686554e99e4e5dbcc2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint pythonPackages.pytest ros-testing test-msgs ];
  propagatedBuildInputs = [ ament-index-python ros2cli rosidl-runtime-py ];

  meta = {
    description = ''The interface command for ROS 2 command line tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
