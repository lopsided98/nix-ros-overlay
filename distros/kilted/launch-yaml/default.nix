
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-launch-yaml";
  version = "3.8.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/kilted/launch_yaml/3.8.1-2.tar.gz";
    name = "3.8.1-2.tar.gz";
    sha256 = "0d0511478d01bc8f31959f38d7e76f3cebd2961418ebf226c3919bc1038c20a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "YAML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}
