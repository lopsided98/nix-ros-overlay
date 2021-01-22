
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, fcl-catkin, geometric-shapes }:
buildRosPackage {
  pname = "ros-melodic-exotica-collision-scene-fcl-latest";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_collision_scene_fcl_latest/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "43703e1242f22727cb8d4d5eadeed221cf0eb08999cfcc2a4a126bde87b7fa6e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
