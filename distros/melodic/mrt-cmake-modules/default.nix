
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages, ros-environment }:
buildRosPackage {
  pname = "ros-melodic-mrt-cmake-modules";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/melodic/mrt_cmake_modules/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "72c884e7144bd8b900da5e1436fc28b2433ecbeaa8735ca7e7d16f1c9690b5c1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lcov pythonPackages.catkin-pkg pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ros-environment ];
  nativeBuildInputs = [ catkin lcov pythonPackages.catkin-pkg pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ros-environment ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
