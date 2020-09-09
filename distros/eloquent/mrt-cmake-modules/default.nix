
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-eloquent-mrt-cmake-modules";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/eloquent/mrt_cmake_modules/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "d62142d2abee5a0006f8a5fbb8d01dd38876a572f445e82a272e493a702c9f3c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];
  nativeBuildInputs = [ ament-cmake-core python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
