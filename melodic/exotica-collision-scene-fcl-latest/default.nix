
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, fcl-catkin, geometric-shapes, catkin }:
buildRosPackage {
  pname = "ros-melodic-exotica-collision-scene-fcl-latest";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_collision_scene_fcl_latest/5.0.0-0.tar.gz;
    sha256 = "3272a80421da42c672c81733bc649c88783104d945c886f589acf5fd90d97294";
  };

  buildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  propagatedBuildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
