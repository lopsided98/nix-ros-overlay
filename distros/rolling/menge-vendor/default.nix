
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-rolling-menge-vendor";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/rolling/menge_vendor/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "53243e486f0429545597126e43970bf816d5ce4e876b4760da11056f6eead34b";
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
