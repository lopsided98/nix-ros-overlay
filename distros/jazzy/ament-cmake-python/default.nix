
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-python";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_python/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "749a6a62de1b130da78a46eb264151746c3e7a16cf15fbc09a246a3d8b7136d1";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to use Python in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
