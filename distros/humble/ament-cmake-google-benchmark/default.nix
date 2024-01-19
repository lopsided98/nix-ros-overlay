
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-export-dependencies, ament-cmake-python, ament-cmake-test, google-benchmark-vendor }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-google-benchmark";
  version = "1.3.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_google_benchmark/1.3.6-1.tar.gz";
    name = "1.3.6-1.tar.gz";
    sha256 = "3aad0bbefbe0a2647c3613ec6af56d255c95da8be3567e4549c81b49c193c62b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-test google-benchmark-vendor ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-export-dependencies ament-cmake-python ];

  meta = {
    description = ''The ability to add Google Benchmark tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
