
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-lyrical-ament-cmake-libraries";
  version = "2.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/lyrical/ament_cmake_libraries/2.8.9-1.tar.gz";
    name = "2.8.9-1.tar.gz";
    sha256 = "68be268f517ec66818e9e34af4322c5d27980e6d0ac59abfa2b394befc9a5d58";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to deduplicate libraries in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
