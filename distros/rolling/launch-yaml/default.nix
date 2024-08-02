
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-yaml";
  version = "3.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_yaml/3.6.1-1.tar.gz";
    name = "3.6.1-1.tar.gz";
    sha256 = "d7e4c5fb96a9a6da423a3fdcfa44081f3167f5533b87b66202017790a343df02";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "YAML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}
