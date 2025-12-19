
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, launch, launch-testing, launch-testing-ament-cmake, mimick-vendor, osrf-testing-tools-cpp, performance-test-fixture, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-rcutils";
  version = "6.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcutils-release/archive/release/kilted/rcutils/6.9.9-1.tar.gz";
    name = "6.9.9-1.tar.gz";
    sha256 = "f894667d6ddd06d6a12df98267c2333bc7ae71f081a47851fd3e41756d06949e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-ros-core python3Packages.empy ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing launch-testing-ament-cmake mimick-vendor osrf-testing-tools-cpp performance-test-fixture ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core python3Packages.empy ];

  meta = {
    description = "Package containing various utility types and functions for C";
    license = with lib.licenses; [ asl20 ];
  };
}
