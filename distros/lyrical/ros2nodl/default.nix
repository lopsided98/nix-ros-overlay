
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-lyrical-ros2nodl";
  version = "0.3.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/lyrical/ros2nodl/0.3.1-6.tar.gz";
    name = "0.3.1-6.tar.gz";
    sha256 = "20a7f87983717e5ebcd0d752a02ebfd05f82968d6a6d2fae8000982dfc96f880";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = "CLI tools for NoDL files.";
    license = with lib.licenses; [ asl20 ];
  };
}
