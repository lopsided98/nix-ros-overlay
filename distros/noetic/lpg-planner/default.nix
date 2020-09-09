
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-lpg-planner";
  version = "2.1.21-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/lpg_planner/2.1.21-1.tar.gz";
    name = "2.1.21-1.tar.gz";
    sha256 = "8ca8a8c8725e597a3ba1db0a2a1d59b09af1af30f707c0ddac3414caa3bc2392";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
