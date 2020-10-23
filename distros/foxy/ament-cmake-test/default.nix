
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-test";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_test/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "e70a60924d4f2611952368a918f92acc921f248b10dfaa34c72d27872f80ade8";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-python ];

  meta = {
    description = ''The ability to add tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
