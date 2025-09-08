
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-kilted-menge-vendor";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/kilted/menge_vendor/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "445a0197be089e946dcf07f63593070db6920065ecece650595a15d3c3de71ae";
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
