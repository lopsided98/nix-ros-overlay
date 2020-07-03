
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-foxy-ros2nodl";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/canonical/nodl-release/archive/release/foxy/ros2nodl/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "40d0c23516d8fc3ad239f2eb318178f8128648029a792ec28ae893a3dc3df6ac";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
