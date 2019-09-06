
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-test, ament-cmake-core, python3Packages }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-nose";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/ament_cmake-release/archive/release/crystal/ament_cmake_nose/0.6.1-0.tar.gz;
    sha256 = "0fec7ba4af531935db3cb1fd4f6c03273639e52cf792df5deeda081f49c3bfd1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-test python3Packages.nose ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to add nose-based tests in the ament buildsystem in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}
