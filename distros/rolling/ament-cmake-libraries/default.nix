
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-libraries";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_libraries/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "dd5fdaf9d1025284035fe1fbb3a8b02cd2114ff040015db1afb1057aea04a395";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to deduplicate libraries in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
