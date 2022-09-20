
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-pybind11-vendor";
  version = "2.2.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/galactic/pybind11_vendor/2.2.6-2.tar.gz";
    name = "2.2.6-2.tar.gz";
    sha256 = "1a85edc84dd02db43a97b21ec69e3adb59a0f9e2e69e3a6fa98b1d7426557514";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
