
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

  buildInputs = [ costmap-2d base-local-planner tf ecl-build nav-msgs ecl-linear-algebra roscpp ];
  propagatedBuildInputs = [ costmap-2d base-local-planner tf ecl-build nav-msgs ecl-linear-algebra roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros navigation utilities.'';
    license = with lib.licenses; [ "Yujin Robot" ];
  };
}
