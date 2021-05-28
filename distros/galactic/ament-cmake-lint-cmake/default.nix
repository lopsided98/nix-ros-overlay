
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-lint-cmake }:
buildRosPackage {
  pname = "ros-galactic-ament-cmake-lint-cmake";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/galactic/ament_cmake_lint_cmake/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "db5e51ed8aa498159b2453d9a911150b7b7d22569a91b43611382d450494e2fd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test ament-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-lint-cmake ];

  meta = {
    description = ''The CMake API for ament_lint_cmake to lint CMake code using cmakelint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
