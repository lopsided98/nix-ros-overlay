
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-rolling-ros2nodl";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/rolling/ros2nodl/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "ed7b1bbae444a8ef3a950e2f1c81602f9b9e67f8502f2eb34f7c6edae9daf513";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
