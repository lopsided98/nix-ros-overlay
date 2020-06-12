
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock, gmock-vendor }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-gmock";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_gmock/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "7bac550acca3e21db0bc566005cdb15c868afcf16d16c55756520b13811aad1d";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-gtest ament-cmake-test gmock gmock-vendor ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add Google mock-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
