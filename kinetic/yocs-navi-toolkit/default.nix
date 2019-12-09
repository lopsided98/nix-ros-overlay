
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, base-local-planner, catkin, costmap-2d, roscpp, nav-msgs, ecl-build, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-kinetic-yocs-navi-toolkit";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/kinetic/yocs_navi_toolkit/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "70d8ffe9e7e466a9b0929b3fbba8182560078459f079d539702cdab9b9dcffbc";
  };

  buildType = "catkin";
  buildInputs = [ tf base-local-planner costmap-2d roscpp nav-msgs ecl-build ecl-linear-algebra ];
  propagatedBuildInputs = [ tf base-local-planner costmap-2d roscpp nav-msgs ecl-build ecl-linear-algebra ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros navigation utilities.'';
    license = with lib.licenses; [ "Yujin Robot" ];
  };
}
