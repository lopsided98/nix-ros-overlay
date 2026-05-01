
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-lyrical-menge-vendor";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/lyrical/menge_vendor/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "a951ebbd753a5afe3c7baddf356110eb8605c743c05b345e7ce9e95fc9a0b5a9";
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
