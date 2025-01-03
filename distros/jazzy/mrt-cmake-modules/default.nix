
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest-vendor, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mrt-cmake-modules";
  version = "1.0.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrt_cmake_modules-release/archive/release/jazzy/mrt_cmake_modules/1.0.11-2.tar.gz";
    name = "1.0.11-2.tar.gz";
    sha256 = "521fcefd901752d9b8168a421d355aae37c7cfc3379a9fc6ac80b69492c42ace";
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
