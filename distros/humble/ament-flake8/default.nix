
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-flake8";
  version = "0.12.14-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_flake8/0.12.14-1.tar.gz";
    name = "0.12.14-1.tar.gz";
    sha256 = "6e43928a3ac6e20f4f2bd8f6812afb9e1998347919475f84aa30e714fc41bd80";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 ];

  meta = {
    description = "The ability to check code for style and syntax conventions with flake8.";
    license = with lib.licenses; [ asl20 ];
  };
}
