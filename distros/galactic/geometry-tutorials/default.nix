
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-galactic-geometry-tutorials";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry_tutorials-release/archive/release/galactic/geometry_tutorials/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "5cefc15dadbb18e4ec2745610625d85fcbb228ff5b2a16cbc22c3d2259e33fc3";
  };

  buildType = "ament_cmake";
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage of geometry tutorials ROS.'';
    license = with lib.licenses; [ asl20 ];
  };
}
