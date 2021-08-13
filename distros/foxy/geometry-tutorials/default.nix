
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-foxy-geometry-tutorials";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/foxy/geometry_tutorials/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "c294ac107c09cf598710b598a131a49047d2326a1b2a110ba4c190e1ddc98bba";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
