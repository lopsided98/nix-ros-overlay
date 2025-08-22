
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-ament-mypy";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_mypy/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "27181693c106217ccb325fd64888df5d844765fe370d07f7ded457e8dd18b08a";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
