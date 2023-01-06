
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-yaml";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_yaml/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "1b04f4a90afd08c39762d0eb039ea6a1107aa9b58cd45215cf4a0605cb18ea30";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = ''YAML frontend for the launch package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
