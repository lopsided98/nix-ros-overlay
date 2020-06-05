
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mrt-cmake-modules";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/melodic/mrt_cmake_modules/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "77d17c502c1b98dd71fe09652979c234d379fee343a48646a0d1c1a1ec3e6a56";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ lcov pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ];
  nativeBuildInputs = [ catkin pythonPackages.pyyaml pythonPackages.rospkg pythonPackages.setuptools ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ gpl3 ];
  };
}
