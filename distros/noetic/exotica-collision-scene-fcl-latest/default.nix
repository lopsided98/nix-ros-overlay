
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, fcl-catkin, geometric-shapes }:
buildRosPackage {
  pname = "ros-noetic-exotica-collision-scene-fcl-latest";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_collision_scene_fcl_latest/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "6a068dd35a2b865d83803b9743c2a10b8d4db856bff6bff828e98defda07573c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
