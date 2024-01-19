
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest-vendor, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-humble-mrt-cmake-modules";
  version = "1.0.9-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrt_cmake_modules-release/archive/release/humble/mrt_cmake_modules/1.0.9-3.tar.gz";
    name = "1.0.9-3.tar.gz";
    sha256 = "67fae5d9e5a4cb31235807dba74b4c061bde0e2deab633339c121f18638076fc";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ gtest-vendor lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];
  nativeBuildInputs = [ ament-cmake-core gtest-vendor lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
