
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-mypy, ament-pep257, graphviz, python3Packages }:
buildRosPackage {
  pname = "ros-humble-caret-analyze";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/caret_analyze-release/archive/release/humble/caret_analyze/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "9eeb29d5f0975acb69d002c75731b7f9c969f2a8ec4396a558960ead86719e7c";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-mypy ament-pep257 python3Packages.pytest python3Packages.pytest-mock ];
  propagatedBuildInputs = [ graphviz python3Packages.colorcet python3Packages.graphviz python3Packages.pyyaml python3Packages.setuptools python3Packages.tqdm ];

  meta = {
    description = "CARET's tools for analyzing trace results";
    license = with lib.licenses; [ asl20 ];
  };
}
