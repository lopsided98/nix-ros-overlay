
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-lpg-planner";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/lpg_planner/2.1.11-0.tar.gz;
    sha256 = "45961ad85c080191dcf75a214bbbd96acb7dc86335deb10620a1813024f795ac";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    #license = lib.licenses.GPL;
  };
}
