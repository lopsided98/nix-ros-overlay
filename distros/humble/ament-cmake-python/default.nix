
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-python";
  version = "1.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_python/1.3.15-1.tar.gz";
    name = "1.3.15-1.tar.gz";
    sha256 = "491e40e86ce6353fdb15a2b2c58d39c99b82aa949404400bef99760eafb6c578";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to use Python in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
