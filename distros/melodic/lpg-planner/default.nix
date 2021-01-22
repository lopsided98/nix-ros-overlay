
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-lpg-planner";
  version = "2.1.21-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/lpg_planner/2.1.21-3.tar.gz";
    name = "2.1.21-3.tar.gz";
    sha256 = "36bbbab7b76409e1995490b8da7e7137c51189b5ae6a18271c0c94c095df9004";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
