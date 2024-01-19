
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, fcl, geometric-shapes }:
buildRosPackage {
  pname = "ros-noetic-exotica-collision-scene-fcl-latest";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_collision_scene_fcl_latest/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "4498a661edc5aaf4f04f356ad9a44b69a2e16b3767cf37a3b4bd605dbc8145d0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core fcl geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
