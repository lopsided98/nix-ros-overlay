
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, pythonPackages }:
buildRosPackage {
  pname = "ros-rolling-pybind11-vendor";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/rolling/pybind11_vendor/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "b24856f5b604a0ee2009d3b9fa9245c1c021635d7ba9faec5b215b30884e9abd";
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
