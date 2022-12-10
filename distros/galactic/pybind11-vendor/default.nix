
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-galactic-pybind11-vendor";
  version = "2.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/galactic/pybind11_vendor/2.2.7-1.tar.gz";
    name = "2.2.7-1.tar.gz";
    sha256 = "d6d194daac27c33f35126d51f398e2e1b48688f2891398a297ec19f78d21fff8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
