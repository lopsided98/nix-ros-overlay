
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-index-python, ament-lint-auto, ament-lint-common, ament-mypy, nodl-python, python3Packages, pythonPackages, ros2cli, ros2pkg, ros2run }:
buildRosPackage {
  pname = "ros-foxy-ros2nodl";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nodl-release/archive/release/foxy/ros2nodl/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "1795ce9dfaafc7c82bedbeaa542909cb7c0c893ca4d9458d028528e993dac7ad";
  };

  buildType = "ament_python";
  checkInputs = [ ament-flake8 ament-lint-auto ament-lint-common ament-mypy python3Packages.pytest-mock pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python nodl-python python3Packages.argcomplete ros2cli ros2pkg ros2run ];

  meta = {
    description = ''CLI tools for NoDL files.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
