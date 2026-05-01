
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-ament-mypy";
  version = "0.20.5-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/lyrical/ament_mypy/0.20.5-4.tar.gz";
    name = "0.20.5-4.tar.gz";
    sha256 = "85146e3149b7dad8e123ff1d931ddf4520a5eeed67505779c0563d86313b1d4b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
