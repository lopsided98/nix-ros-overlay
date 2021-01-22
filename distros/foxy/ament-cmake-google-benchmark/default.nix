
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-google-benchmark";
  version = "0.9.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_google_benchmark/0.9.8-1.tar.gz";
    name = "0.9.8-1.tar.gz";
    sha256 = "9345411ccdea1c800d4ca3473c0d1f2738afc1a91fd5de22916a52e008bc98f9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test google-benchmark-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = ''The ability to add Google Benchmark tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
