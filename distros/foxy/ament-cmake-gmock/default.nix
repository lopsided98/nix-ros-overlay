
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-gtest, ament-cmake-test, gmock-vendor, gtest }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-gmock";
  version = "0.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_gmock/0.9.9-1.tar.gz";
    name = "0.9.9-1.tar.gz";
    sha256 = "3fafecf9716d5609a5b8bb95b28aa04e9f4cd160992604e6795536e55db37f34";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-gtest ament-cmake-test gmock-vendor gtest ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add Google mock-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
