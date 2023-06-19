
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pkg-config, tinyxml }:
buildRosPackage {
  pname = "ros-iron-menge-vendor";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/menge_vendor-release/archive/release/iron/menge_vendor/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "d941a8cbf4f3ddbcc87599ce36d4976e1fa9f581b6ff224792dbb5382876c4bc";
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
