
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-foxy-fmilibrary-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmilibrary_vendor-release/archive/release/foxy/fmilibrary_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "f6ae4017b2c794172fcb6e1ac90149df341e3361c605b3c2d4874775b436b17e";
  };

  buildType = "catkin";
  buildInputs = [ git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
