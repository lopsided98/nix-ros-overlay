
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-foxy-ros2nodl";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/canonical/nodl-release/archive/release/foxy/ros2nodl/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "dd889c2b984f6087026e9d577febf02a92738991a3a2b29471ec45e2c6507f49";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
