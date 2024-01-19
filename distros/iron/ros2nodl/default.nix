
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-iron-ros2nodl";
  version = "0.3.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/iron/ros2nodl/0.3.1-4.tar.gz";
    name = "0.3.1-4.tar.gz";
    sha256 = "bf174a478e0892f15748aea287147daaee1e7b8fc4d395405a999fa0422ee9db";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
