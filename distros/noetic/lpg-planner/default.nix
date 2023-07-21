
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk }:
buildRosPackage {
  pname = "ros-noetic-lpg-planner";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/lpg_planner/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "08b28cfdf0120590ea619148637725c8d2cf3ad03e1b5a5a35e319a9b4461f74";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
