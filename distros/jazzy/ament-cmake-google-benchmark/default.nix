
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-google-benchmark";
  version = "2.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_google_benchmark/2.5.2-1.tar.gz";
    name = "2.5.2-1.tar.gz";
    sha256 = "7e253922e683d4b49e01d921831248d05d4f245fc44dee7a7d08c411dd8f9512";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-test google-benchmark-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];

  meta = {
    description = "The ability to add Google Benchmark tests in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
