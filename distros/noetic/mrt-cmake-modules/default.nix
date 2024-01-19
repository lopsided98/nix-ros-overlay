
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, lcov, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-noetic-mrt-cmake-modules";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/KIT-MRT/mrt_cmake_modules-release/archive/release/noetic/mrt_cmake_modules/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "a57151852aaea4af01ddd8037c45e191cdf38a2b3e4e402c14f87d0d8548385d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];
  nativeBuildInputs = [ catkin lcov python3Packages.catkin-pkg python3Packages.pyyaml python3Packages.rospkg python3Packages.setuptools ros-environment ];

  meta = {
    description = ''CMake Functions and Modules for automating CMake'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
