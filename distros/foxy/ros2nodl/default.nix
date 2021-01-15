
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-foxy-ros2nodl";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/foxy/ros2nodl/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "f500f0c85d048581b793e1cec2162f4fe2be349dacc67aef364fa4048bf8ff65";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
