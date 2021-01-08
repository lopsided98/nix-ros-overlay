
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-dashing-fmilibrary-vendor";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmilibrary_vendor-release/archive/release/dashing/fmilibrary_vendor/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "4de5e064258ae379d366cc8bf874f21b2d1f7bed1dc1d73b1f8c730b09ed55ef";
  };

  buildType = "catkin";
  buildInputs = [ git ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
