
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, osrf-pycommon, pythonPackages }:
buildRosPackage {
  pname = "ros-dashing-launch";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/dashing/launch/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "c713a50068be6b6a6bb461930229d0342e9b795d8c99ef52108f703a8f1691b2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ osrf-pycommon ];

  meta = {
    description = ''The ROS launch tool.'';
    license = with lib.licenses; [ asl20 ];
  };
}
