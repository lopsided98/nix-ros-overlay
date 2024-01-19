
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-willow-maps";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/willow_maps-release/archive/release/noetic/willow_maps/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "da7a3de20a1d6b8bc738f90a7fbc63a821cc607ab52b4f3d8dc0083a14e0e58e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Holds maps of Willow Garage that can be used for a number of different applications.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
