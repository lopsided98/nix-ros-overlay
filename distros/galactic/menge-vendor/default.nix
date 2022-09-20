
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-galactic-menge-vendor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/galactic/menge_vendor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "25af4778d17722066ce1f6bf922174d33210e2af13dd24c7a4d08cb2047d5c13";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Menge is a powerful, cross-platform, modular framework for crowd simulation developed at the University of North Carolina - Chapel Hill. This package includes the core simulation part of origin menge package, with a bit modification for crowd simulation in gazebo and ignition gazebo.'';
    license = with lib.licenses; [ asl20 ];
  };
}
