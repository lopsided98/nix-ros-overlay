
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-python";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_python/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "9d5a49f8278fdc0e7ce56d099d03d16b3cadcf4efefe08f887da0c6fd632faa7";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to use Python in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
