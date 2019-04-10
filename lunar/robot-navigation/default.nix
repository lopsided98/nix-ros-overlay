
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-core-adapter, costmap-queue, dwb-plugins, locomotor-msgs, nav-2d-msgs, nav-grid, nav-core2, catkin, nav-2d-utils, locomove-base, locomotor, nav-grid-iterators, dwb-local-planner, nav-grid-pub-sub, dlux-plugins, dlux-global-planner, dwb-critics, dwb-msgs, global-planner-tests }:
buildRosPackage {
  pname = "ros-lunar-robot-navigation";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/lunar/robot_navigation/0.2.5-0.tar.gz;
    sha256 = "d10fb54482a3435d55e3b87beffa550a32135b7d80aa84531dc1f1f541240915";
  };

  propagatedBuildInputs = [ dwb-local-planner nav-core-adapter nav-grid-pub-sub dlux-plugins nav-grid nav-grid-iterators dlux-global-planner nav-core2 costmap-queue dwb-critics dwb-plugins nav-2d-utils locomove-base dwb-msgs locomotor locomotor-msgs global-planner-tests nav-2d-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    #license = lib.licenses.BSD;
  };
}
