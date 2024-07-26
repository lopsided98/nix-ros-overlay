
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-launch-yaml";
  version = "3.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_yaml/3.6.0-1.tar.gz";
    name = "3.6.0-1.tar.gz";
    sha256 = "2b7ca8ef818fb426fcd227bcc6c77a02775d6f6e51e4e530abb8ac6645ff1f96";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "YAML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}
