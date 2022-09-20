
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, gtest-vendor, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-galactic-mrt-cmake-modules";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/galactic/mrt_cmake_modules/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "90ae9ca8a6295fbf44d849e1a3e81ae1c29a9bcddf2ac3d2e0e23467678994d2";
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
