
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, fcl-catkin, geometric-shapes }:
buildRosPackage {
  pname = "ros-melodic-exotica-collision-scene-fcl-latest";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_collision_scene_fcl_latest/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "a8e70b1d43ad3f4036a1d8279616877d2b6b6c22cf2b48dc9ee6b99298ac3497";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
