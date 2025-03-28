
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, python3Packages }:
buildRosPackage {
  pname = "ros-humble-ament-mypy";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_mypy/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "6cd1c6016fbd90ca593e609c0c436ddf4e7e94927b5fd239f10553250caabf90";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ python3Packages.mypy ];

  meta = {
    description = "Support for mypy static type checking in ament.";
    license = with lib.licenses; [ asl20 ];
  };
}
