
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-eloquent-fmilibrary-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmilibrary_vendor-release/archive/release/eloquent/fmilibrary_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "ca71005d9da2532676622d5194fbf8d1922458e9ce8677f17a57552ffc9d354f";
  };

  buildType = "catkin";
  buildInputs = [ git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
