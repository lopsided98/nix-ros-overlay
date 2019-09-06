
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, ament-cmake-gtest, motion-model, autoware-auto-cmake, osrf-testing-tools-cpp }:
buildRosPackage {
  pname = "ros-dashing-kalman-filter";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://gitlab.com/AutowareAuto/AutowareAuto-release/repository/archive.tar.gz?ref=release/dashing/kalman_filter/0.0.1-1";
    name = "archive.tar.gz";
    sha256 = "6ee9f1299d099dbdd1ebb4496c2ad133520d702789e71a7f2455efe6d4affded";
  };

  buildType = "ament_cmake";
  buildInputs = [ motion-model ];
  checkInputs = [ ament-cmake-gtest osrf-testing-tools-cpp ament-lint-common ];
  propagatedBuildInputs = [ motion-model ];
  nativeBuildInputs = [ ament-cmake autoware-auto-cmake ];

  meta = {
    description = ''an implementation of square root covariance filtering (carlson-schmidt) for probabilistic state estimation'';
    license = with lib.licenses; [ asl20 ];
  };
}
