
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, python3Packages }:
buildRosPackage {
  pname = "ros-kilted-pybind11-vendor";
  version = "3.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/kilted/pybind11_vendor/3.2.0-2.tar.gz";
    name = "3.2.0-2.tar.gz";
    sha256 = "9247535267537c102fe2de5a0944c308040da2c45b0cbaae37b61418eac7cdfb";
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
