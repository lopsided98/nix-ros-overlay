
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-pybind11-vendor";
  version = "3.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/jazzy/pybind11_vendor/3.1.2-2.tar.gz";
    name = "3.1.2-2.tar.gz";
    sha256 = "b414cea123b6ed3359ad78deee1bbc4bd09652388faa3cdb81c869c3fe5dc3e7";
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
