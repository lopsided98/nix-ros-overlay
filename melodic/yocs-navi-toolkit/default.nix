
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, base-local-planner, tf, catkin, ecl-build, nav-msgs, ecl-linear-algebra, roscpp }:
buildRosPackage {
  pname = "ros-melodic-yocs-navi-toolkit";
  version = "0.8.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_navi_toolkit/0.8.2-0.tar.gz;
    sha256 = "fbf635ac9b081ac52ced067b1d5b6ffdb7c17a320ba7d229e92d53538a44ac5f";
  };

  buildInputs = [ costmap-2d nav-msgs base-local-planner ecl-linear-algebra tf roscpp ecl-build ];
  propagatedBuildInputs = [ costmap-2d nav-msgs base-local-planner ecl-linear-algebra tf roscpp ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros navigation utilities.'';
    #license = lib.licenses.Yujin Robot;
  };
}
