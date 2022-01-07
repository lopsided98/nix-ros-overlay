
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-galactic-ros2nodl";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/galactic/ros2nodl/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "f6deb6248123797275cfa3a1e01b99420a0dfcc2139bc26bd659b774fea9aef0";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
