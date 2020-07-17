
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-libraries";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/dashing/ament_cmake_libraries/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "eae4998c57245ddaef9a7ef28fda752d543fda6cdf503cd01eba3dd026e417ab";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The functionality to deduplicate libraries in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
