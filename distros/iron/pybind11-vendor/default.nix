
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-pybind11-vendor";
  version = "3.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/iron/pybind11_vendor/3.0.3-3.tar.gz";
    name = "3.0.3-3.tar.gz";
    sha256 = "680298928be7efb2a4e32ef2c5061819d6ef3df7063ecc9a311ba610ff32ef33";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  propagatedBuildInputs = [ pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
