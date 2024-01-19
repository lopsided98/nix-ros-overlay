
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint, python3Packages }:
buildRosPackage {
  pname = "ros-iron-ament-flake8";
  version = "0.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_flake8/0.14.2-1.tar.gz";
    name = "0.14.2-1.tar.gz";
    sha256 = "a14af59be3111bbc66efb20267b34c11f4a34c4d590631c8a4a5e4fa2fad6b16";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ ament-lint python3Packages.flake8 ];

  meta = {
    description = ''The ability to check code for style and syntax conventions with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
