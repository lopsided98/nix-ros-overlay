
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, launch, ament-index-python, launch-ros, pythonPackages, ros2pkg, ros2cli, ament-pep257, ament-flake8 }:
buildRosPackage {
  pname = "ros-crystal-ros2launch";
  version = "0.7.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/crystal/ros2launch/0.7.4-0.tar.gz";
    name = "0.7.4-0.tar.gz";
    sha256 = "3d01086b81c441f2d45bfeeb3860f45d5e74a8b3988029ce280755ccdcc65cb1";
  };

  buildType = "ament_python";
  buildInputs = [ launch launch-ros ros2pkg ros2cli ament-index-python ];
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ launch launch-ros ros2pkg ros2cli ament-index-python ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
