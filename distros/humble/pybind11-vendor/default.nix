
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git, pythonPackages }:
buildRosPackage {
  pname = "ros-humble-pybind11-vendor";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pybind11_vendor-release/archive/release/humble/pybind11_vendor/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "c923d9e62f43639301a6f5551f18eabe9eb09301f9d658f6e891f4b6b5ca95af";
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
