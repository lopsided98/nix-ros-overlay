
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-foxy-pybind11-vendor";
  version = "2.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/foxy/pybind11_vendor/2.2.7-1.tar.gz";
    name = "2.2.7-1.tar.gz";
    sha256 = "e0067446f3bf04e3470c67dee554233cfe2cca3d1cf56e4a602ecdb8050bdfe2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
