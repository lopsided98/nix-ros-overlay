
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-python";
  version = "2.8.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/rolling/ament_cmake_python/2.8.7-2.tar.gz";
    name = "2.8.7-2.tar.gz";
    sha256 = "b195cfac447c86011706502d8e6bb0f1d2d4ea05ac07389b9d7f3dd1e17f8044";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to use Python in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
