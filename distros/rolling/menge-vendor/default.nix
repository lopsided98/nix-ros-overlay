
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-rolling-menge-vendor";
  version = "1.2.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/rolling/menge_vendor/1.2.0-2.tar.gz";
    name = "1.2.0-2.tar.gz";
    sha256 = "abbfe0d56a1b50211c689472300b6268826683f4127797e6df8b427ad3639821";
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
