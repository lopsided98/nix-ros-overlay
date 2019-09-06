
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, launch-ros, launch, pythonPackages, ament-pep257, ament-copyright, ament-index-python, ros2pkg, ros2cli }:
buildRosPackage {
  pname = "ros-crystal-ros2launch";
  version = "0.7.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/crystal/ros2launch/0.7.4-0.tar.gz";
    name = "0.7.4-0.tar.gz";
    sha256 = "3d01086b81c441f2d45bfeeb3860f45d5e74a8b3988029ce280755ccdcc65cb1";
  };

  buildType = "ament_python";
  buildInputs = [ launch-ros launch ament-index-python ros2pkg ros2cli ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ launch-ros launch ament-index-python ros2pkg ros2cli ];

  meta = {
    description = ''The launch command for ROS 2 command line tools.'';
    license = with lib.licenses; [ asl20 ];
  };
}
