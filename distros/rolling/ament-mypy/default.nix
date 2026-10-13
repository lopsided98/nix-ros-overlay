
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-xmllint, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-ament-mypy";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_mypy/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "511528cc0bb83ce1c6285a0b79ad58bfda3dea6d1919e6cc141e0480a65fc938";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-xmllint python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
