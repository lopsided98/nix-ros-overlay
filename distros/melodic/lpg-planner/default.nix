
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-lpg-planner";
  version = "2.1.24-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/lpg_planner/2.1.24-1.tar.gz";
    name = "2.1.24-1.tar.gz";
    sha256 = "ddb8d29035bc8e74460123650bc23d69b87b9802fe1f9fcfd20249e784bd7fd0";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    license = with lib.licenses; [ gpl1 ];
  };
}
