
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, autoware-auto-cmake, eigen, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-optimization";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/optimization/0.0.2-1";
    name = "archive.tar.gz";
    sha256 = "f54d28fb780347abfabcbe38ab99ec9a55e1e482cb8cf2fe015950ef3c254d3f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common osrf-testing-tools-cpp ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''A base interface for defining optimization problems and implementations of common optimizers.'';
    license = with lib.licenses; [ asl20 ];
  };
}
