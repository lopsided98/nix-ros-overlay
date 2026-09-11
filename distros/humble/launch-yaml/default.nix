
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, python3Packages }:
buildRosPackage {
  pname = "ros-humble-launch-yaml";
  version = "1.0.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/humble/launch_yaml/1.0.15-1.tar.gz";
    name = "1.0.15-1.tar.gz";
    sha256 = "96338eb299f27b35c84b89b3b9b6daae6081afa67b73f82e6242ee021e92b28e";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "YAML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}
