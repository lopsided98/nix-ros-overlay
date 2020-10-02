
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest-vendor, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-eloquent-mrt-cmake-modules";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/eloquent/mrt_cmake_modules/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "23adb602c0e319cabcb4e5a862a5916bccd8f0e1b5d841ed6c3684e4ebc455ed";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gtest-vendor lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];
  nativeBuildInputs = [ ament-cmake-core python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
