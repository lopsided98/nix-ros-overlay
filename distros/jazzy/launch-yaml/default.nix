
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, launch, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-launch-yaml";
  version = "3.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/jazzy/launch_yaml/3.4.11-1.tar.gz";
    name = "3.4.11-1.tar.gz";
    sha256 = "f98d3434c3987fff5f62f6a84822e7161398be677e416ba710b1e3653b141f5b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "YAML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}
