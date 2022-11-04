
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-google-benchmark";
  version = "0.9.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_google_benchmark/0.9.11-1.tar.gz";
    name = "0.9.11-1.tar.gz";
    sha256 = "455344a6166cc5dce39c9bad4731a4beb28c0734e6d628839ff3b846ac0f2c59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-test google-benchmark-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = ''The ability to add Google Benchmark tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
