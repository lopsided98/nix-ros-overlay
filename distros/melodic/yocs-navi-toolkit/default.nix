
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, ecl-build, ecl-linear-algebra, nav-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-yocs-navi-toolkit";
  version = "0.8.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/yujin_ocs-release/archive/release/melodic/yocs_navi_toolkit/0.8.2-0.tar.gz";
    name = "0.8.2-0.tar.gz";
    sha256 = "fbf635ac9b081ac52ced067b1d5b6ffdb7c17a320ba7d229e92d53538a44ac5f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ base-local-planner costmap-2d ecl-build ecl-linear-algebra nav-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Ros navigation utilities.'';
    license = with lib.licenses; [ "Yujin-Robot" ];
  };
}
