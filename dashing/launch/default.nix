
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osrf-pycommon, ament-flake8, pythonPackages, ament-pep257, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-launch";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "d072ef1fc72b59b15b8f8c020c3846a006f1a2a61968169f5f38ba4dedbd09e7";
  };

  buildType = "ament_python";
  buildInputs = [ osrf-pycommon ];
  checkInputs = [ ament-flake8 ament-copyright pythonPackages.pytest ament-pep257 ];
  propagatedBuildInputs = [ osrf-pycommon ];

  meta = {
    description = ''The ROS launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
