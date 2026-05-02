
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-rolling-ros2nodl";
  version = "0.3.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/ros2nodl/0.3.1-5.tar.gz";
    name = "0.3.1-5.tar.gz";
    sha256 = "836db8cb3a94deadc1328f97cc1f7928ded2d4307ddbe19ff7030084170e8a80";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = "CLI tools for NoDL files.";
    license = with lib.licenses; [ asl20 ];
  };
}
