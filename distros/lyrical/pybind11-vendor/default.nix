
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, python3Packages }:
buildRosPackage {
  pname = "ros-lyrical-pybind11-vendor";
  version = "3.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/lyrical/pybind11_vendor/3.3.1-3.tar.gz";
    name = "3.3.1-3.tar.gz";
    sha256 = "94e6afcf4f8ccdb7d2bcc38134d93e4e68d39c10bf5e5b2e5247fc0a8357cb56";
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
