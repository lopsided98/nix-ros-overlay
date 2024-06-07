
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-jazzy-menge-vendor";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/jazzy/menge_vendor/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "8fb9ac573f44be69b53986bce1151846becfbcf5176bd0aa1673c67ba0e5254d";
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
