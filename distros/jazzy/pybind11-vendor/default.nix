
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-pybind11-vendor";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/jazzy/pybind11_vendor/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "5414bb266df59e01f7dd9b63c641b877432a41be0f74a45efa2e5605c4928ae3";
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
