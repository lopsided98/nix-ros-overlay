
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-humble-menge-vendor";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/humble/menge_vendor/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c19f90e7fa5e517f34e2fc6f17e906e5a35e3bb73d9ffb78c6f27adb1101185a";
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
