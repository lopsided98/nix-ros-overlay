
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-python";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/kilted/ament_cmake_python/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "b62974e23568b9555396e14fcfc2173e301e3a7a5c5afa0a979ffaafd85bfa07";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to use Python in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
