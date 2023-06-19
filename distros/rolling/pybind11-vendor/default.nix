
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-pybind11-vendor";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/rolling/pybind11_vendor/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "6c6835a17ef03adde147a3e8746e9953f724a4b9d64f9eee5f9263d5f49948ff";
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
