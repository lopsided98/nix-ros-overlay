
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-pybind11-vendor";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/rolling/pybind11_vendor/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "38e9bd96e3d432fcce1df9260408ceb54884c12f33b2c42f0de3dbcdd015d485";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  propagatedBuildInputs = [ pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
