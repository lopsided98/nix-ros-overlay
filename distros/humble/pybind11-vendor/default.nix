
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-pybind11-vendor";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/humble/pybind11_vendor/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "96846738ed591092f277d64aeb77b9d7811546da9afd4009e28cd1dce486d10f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ pythonPackages.pybind11 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around pybind11.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
