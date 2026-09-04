
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, launch, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-launch-yaml";
  version = "3.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/launch-release/archive/release/rolling/launch_yaml/3.10.1-1.tar.gz";
    name = "3.10.1-1.tar.gz";
    sha256 = "a8fb4da4b1602c088ed691d24d03e9ad2679fd8c0201d2349c77b8225b505bd2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ launch ];

  meta = {
    description = "YAML frontend for the launch package.";
    license = with lib.licenses; [ asl20 ];
  };
}
