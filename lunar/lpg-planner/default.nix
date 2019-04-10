
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-lpg-planner";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/lpg_planner/2.1.11-2.tar.gz;
    sha256 = "969b867931ff3ee7ab09939b5309386776d223cef89da334b65d74b27bf82448";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''lpg_planner: LPGL Planner (http://zeus.ing.unibs.it/lpg/)'';
    #license = lib.licenses.GPL;
  };
}
