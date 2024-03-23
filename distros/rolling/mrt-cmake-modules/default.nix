
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest-vendor, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mrt-cmake-modules";
  version = "1.0.9-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrt_cmake_modules-release/archive/release/rolling/mrt_cmake_modules/1.0.9-4.tar.gz";
    name = "1.0.9-4.tar.gz";
    sha256 = "c5cdf7dfc11e043d4b6de840b31d37fc30a8cb4e918e3faf5d75972bf1232dc9";
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
