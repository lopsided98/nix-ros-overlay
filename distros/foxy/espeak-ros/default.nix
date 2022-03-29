
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, espeak, espeak-interfaces, pythonPackages }:
buildRosPackage {
  pname = "ros-foxy-espeak-ros";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/espeak-ros2/espeak-ros2-release/-/archive/release/foxy/espeak_ros/1.0.0-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "0fcfc70a61735971c858a4ed23dfeb920c1db630f0228556f11816c7124603e5";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ espeak espeak-interfaces ];

  meta = {
    description = ''ROS interface to the `espeak` command line tool.'';
    license = with lib.licenses; [ mit ];
  };
}
