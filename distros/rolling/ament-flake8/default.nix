
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-flake8";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_flake8/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "6b9ff766a295cdbea8a707a0a888f98b4ca49684448cbe1de79fa0058f30702c";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
