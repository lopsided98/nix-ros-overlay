
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mk }:
buildRosPackage {
  pname = "ros-noetic-lpg-planner";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/lpg_planner/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "7ebb93c2d12a7cd0d2a82be47a9ecc00eb0d36cc48e78e6731b4c37f76f967e5";
  };

  buildType = "catkin";
  buildInputs = [ catkin mk ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ "GPL" ];
  };
}
