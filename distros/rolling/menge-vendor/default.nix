
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-rolling-menge-vendor";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/rolling/menge_vendor/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "d8f4cc9d75ce1449686975659c0e11678daf8358991584a4c61948bda9342d27";
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
