
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-noetic-mrt-cmake-modules";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/noetic/mrt_cmake_modules/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "4ae6263deee53ca6992488b020a7affb3906dd8488d4d317475cd041c0ac1972";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ];
  nativeBuildInputs = [ catkin pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ gpl3 ];
  };
}
