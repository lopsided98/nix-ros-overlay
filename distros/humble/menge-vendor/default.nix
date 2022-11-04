
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-humble-menge-vendor";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/humble/menge_vendor/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "95fceaf5a214d236fb7d1f46761cf4a512689e5737d4a5a85aedcf6073702220";
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
