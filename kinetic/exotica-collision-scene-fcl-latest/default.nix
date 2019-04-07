
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, fcl-catkin, geometric-shapes, catkin }:
buildRosPackage {
  pname = "ros-kinetic-exotica-collision-scene-fcl-latest";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_collision_scene_fcl_latest/5.0.0-0.tar.gz;
    sha256 = "00c141c2716d048f8ecefaa8e85c5157c708050db7164de8deb697a62b04c216";
  };

  buildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  propagatedBuildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    #license = lib.licenses.BSD;
  };
}
