
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-fmilibrary-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/boschresearch/fmilibrary_vendor-release/archive/release/dashing/fmilibrary_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "f42c19d9641aa34e82fba8f8a737efa028f31aaa816afe7754f29eb4e278590e";
  };

  buildType = "catkin";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper (aka vendor package) around the FMILibrary by Modelon AB (JModelica.org)'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
