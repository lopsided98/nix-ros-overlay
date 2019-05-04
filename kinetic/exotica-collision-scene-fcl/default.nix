
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, roscpp, geometric-shapes, catkin }:
buildRosPackage {
  pname = "ros-kinetic-exotica-collision-scene-fcl";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_collision_scene_fcl/5.0.0-0.tar.gz;
    sha256 = "367e5186b76d0bfd27a47f5421698677f9dba3b373603b270b75efb3d9dec02a";
  };

  buildInputs = [ exotica-core roscpp geometric-shapes ];
  propagatedBuildInputs = [ exotica-core roscpp geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking using the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
