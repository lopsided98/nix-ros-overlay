
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, osrf-pycommon, ament-flake8, pythonPackages, ament-pep257, ament-copyright }:
buildRosPackage {
  pname = "ros-dashing-launch";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "c713a50068be6b6a6bb461930229d0342e9b795d8c99ef52108f703a8f1691b2";
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
