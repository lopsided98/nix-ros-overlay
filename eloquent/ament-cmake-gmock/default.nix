
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-core, gmock, gmock-vendor, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-gmock";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/eloquent/ament_cmake_gmock/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "c08179abee44caec2b086d68c216d21d55e175320b9d674a8f238d9cf7c95d98";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test gmock gmock-vendor ament-cmake-gtest ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add Google mock-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
