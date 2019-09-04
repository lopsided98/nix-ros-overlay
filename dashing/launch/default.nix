
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osrf-pycommon, ament-flake8, pythonPackages, ament-pep257, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-launch";
  version = "0.8.5-r3";

  src = fetchurl {
    url = https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch/0.8.5-3.tar.gz;
    sha256 = "06f3e0c64288f26550f16f75b6cc308f2b1d424f62b69fe34b15538b5c240657";
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
