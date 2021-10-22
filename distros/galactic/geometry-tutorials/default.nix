
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-geometry-tutorials";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/galactic/geometry_tutorials/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "f3d5c1efce5667e1642b2919b5519e15b77c933f58b7dd4df86dbbbdc98ac5f4";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
