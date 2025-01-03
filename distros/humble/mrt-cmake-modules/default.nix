
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest-vendor, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mrt-cmake-modules";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrt_cmake_modules-release/archive/release/humble/mrt_cmake_modules/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "c7feb6c34b35f8381c6f092a95d0aa6e555777ce28c84285c8310ed1d8b6972d";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ gtest-vendor lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];
  nativeBuildInputs = [ ament-cmake-core gtest-vendor lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];

  meta = {
    description = "CMake Functions and Modules for automating CMake";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
