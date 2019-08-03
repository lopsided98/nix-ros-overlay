
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-lpg-planner";
  version = "2.1.13-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/lpg_planner/2.1.13-1.tar.gz;
    sha256 = "032bfe5a820417ec3014e742c7352fe3a59240b048e8f6e7f547d22166b36f3b";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
