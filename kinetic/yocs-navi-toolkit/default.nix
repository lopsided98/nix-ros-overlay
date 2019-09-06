
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-2d, base-local-planner, tf, catkin, ecl-build, nav-msgs, ecl-linear-algebra, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-yocs-navi-toolkit";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_navi_toolkit/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "70d8ffe9e7e466a9b0929b3fbba8182560078459f079d539702cdab9b9dcffbc";
  };

  buildType = "catkin";
  buildInputs = [ costmap-2d base-local-planner tf ecl-build nav-msgs ecl-linear-algebra roscpp ];
  propagatedBuildInputs = [ costmap-2d base-local-planner roscpp ecl-build nav-msgs ecl-linear-algebra tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros navigation utilities.'';
    license = with lib.licenses; [ "Yujin Robot" ];
  };
}
