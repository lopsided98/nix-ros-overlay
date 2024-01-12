
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-flake8";
  version = "0.12.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_flake8/0.12.9-1.tar.gz";
    name = "0.12.9-1.tar.gz";
    sha256 = "9ecfce8281c2ff9d42f96ae39e7757dbb1f4883c937f3ebd7f95daf6dee4a210";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
