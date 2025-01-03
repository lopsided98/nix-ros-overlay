
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, python3Packages }:
buildRosPackage {
  pname = "ros-rolling-pybind11-vendor";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/rolling/pybind11_vendor/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "b7e289bb78e2b749431ba2182472ed59ff1b53cdc0191cbdcd3234ad098138d8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ python3Packages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Wrapper around pybind11.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
