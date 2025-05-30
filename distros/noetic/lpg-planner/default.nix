
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk }:
buildRosPackage {
  pname = "ros-noetic-lpg-planner";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/lpg_planner/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "66a1c5f53d2bf5249d5e60d59ad3f7fccceaf86b5cc5ff30142b6e9fce24a276";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)";
    license = with lib.licenses; [ "GPL" ];
  };
}
