
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-copyright, ros-testing, pythonPackages, ament-flake8, ament-xmllint, ros2cli, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-eloquent-ros2pkg";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2pkg/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "0d10abd03d264b1858a04125de912373747d446aed4068146b64c1beb63b02d5";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ros-testing ament-copyright ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ python3Packages.empy ros2cli python3Packages.catkin-pkg python3Packages.setuptools ament-index-python ];

  meta = {
    description = ''The pkg command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
