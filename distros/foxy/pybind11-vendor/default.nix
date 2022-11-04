
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-pybind11-vendor";
  version = "2.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/foxy/pybind11_vendor/2.2.6-1.tar.gz";
    name = "2.2.6-1.tar.gz";
    sha256 = "e9e10cba2cb324dd3aea00d5dc83f4b75779e9d4bdb42b9512baa31678e6fa50";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
