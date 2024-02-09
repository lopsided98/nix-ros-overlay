
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-yaml";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_yaml/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "6ec00079f4554a1dad0987a7b1a0a6e9c762413ae1222eb03688e9df0d16708b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''YAML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
