
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-rolling-menge-vendor";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/rolling/menge_vendor/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "893b6125c2ad1bf81b593a4de6ce9476e7bb551d8aa8c485e1f15c9907d293f2";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ tinyxml ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Menge is a powerful, cross-platform, modular framework for crowd simulation developed at the University of North Carolina - Chapel Hill. This package includes the core simulation part of origin menge package, with a bit modification for crowd simulation in gazebo and ignition gazebo.";
    license = with lib.licenses; [ asl20 ];
  };
}
