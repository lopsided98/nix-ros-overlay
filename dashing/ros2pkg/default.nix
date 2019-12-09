
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, pythonPackages, ament-flake8, ament-xmllint, ros2cli, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-dashing-ros2pkg";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/dashing/ros2pkg/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "89ab52df66265e32af512b998989d231afe98bf7f2c899f3d766d91cc09b52f8";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ python3Packages.empy ros2cli python3Packages.catkin-pkg python3Packages.setuptools ament-index-python ];

  meta = {
    description = ''The pkg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
