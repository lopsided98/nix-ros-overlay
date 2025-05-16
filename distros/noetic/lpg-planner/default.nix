
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk }:
buildRosPackage {
  pname = "ros-noetic-lpg-planner";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/lpg_planner/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "e63f41e5cce3f5f82c61f499875069f8d27b0008bab18de136985bec866cd1a9";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)";
    license = with lib.licenses; [ "GPL" ];
  };
}
