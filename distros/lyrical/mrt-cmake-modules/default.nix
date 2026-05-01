
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest-vendor, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mrt-cmake-modules";
  version = "1.0.11-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrt_cmake_modules-release/archive/release/lyrical/mrt_cmake_modules/1.0.11-3.tar.gz";
    name = "1.0.11-3.tar.gz";
    sha256 = "0c26df5262def25bb072948a37a36ec5c852845f66c3d8e8eabd35d89562a26f";
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
