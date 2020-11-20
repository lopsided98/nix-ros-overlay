
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, fcl-catkin, geometric-shapes }:
buildRosPackage {
  pname = "ros-kinetic-exotica-collision-scene-fcl-latest";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_collision_scene_fcl_latest/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "23a9407ca3d998d44b5c00e2dcd1f251dc3d1685622d093d47705e9472a2e362";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
