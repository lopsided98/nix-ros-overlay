
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mrt-cmake-modules";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/melodic/mrt_cmake_modules/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d3e5d808d767175c5ca3a0a2ee80af6a35306fe670dd6860be6b8483b1e750cf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ gpl3 ];
  };
}
