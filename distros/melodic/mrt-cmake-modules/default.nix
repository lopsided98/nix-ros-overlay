
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-mrt-cmake-modules";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/melodic/mrt_cmake_modules/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "88ba3da8cec2fd431c069862b927ac1e01ba8bdda5728fce09e46f1b68db0c38";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ gpl3 ];
  };
}
