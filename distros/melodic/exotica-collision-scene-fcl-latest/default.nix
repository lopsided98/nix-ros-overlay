
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, fcl-catkin, geometric-shapes }:
buildRosPackage {
  pname = "ros-melodic-exotica-collision-scene-fcl-latest";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_collision_scene_fcl_latest/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "a13d9ae11fd68e80daa62c8ac6aab85dca5111015468953b667be858c9d25606";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core fcl-catkin geometric-shapes ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collision checking and distance computation using the latest version of the FCL library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
