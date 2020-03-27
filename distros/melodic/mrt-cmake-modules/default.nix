
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-mrt-cmake-modules";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/melodic/mrt_cmake_modules/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "b3c261212810a999320a2a4398e8337cf801e89cf4a448a98d62e09ebbc1a29c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python pythonPackages.pyyaml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ gpl3 ];
  };
}
