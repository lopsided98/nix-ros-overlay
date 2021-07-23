
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-lpg-planner";
  version = "2.1.23-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/lpg_planner/2.1.23-1.tar.gz";
    name = "2.1.23-1.tar.gz";
    sha256 = "0a03508ba0e0e77d6258e0350ca3aefb60e737e7204aad5a643efcf6a5d277be";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
