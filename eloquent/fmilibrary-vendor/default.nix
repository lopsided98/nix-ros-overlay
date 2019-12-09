
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-fmilibrary-vendor";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmilibrary_vendor-release/archive/release/eloquent/fmilibrary_vendor/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3a6d01e743422b77756190a507e1f41e6133ebe591935cf97cbadf6cdd66b0bf";
  };

  buildType = "catkin";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
