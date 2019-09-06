
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-core-adapter, costmap-queue, dwb-plugins, locomotor-msgs, nav-2d-msgs, nav-grid, nav-core2, catkin, nav-2d-utils, locomove-base, locomotor, dwb-local-planner, nav-grid-iterators, nav-grid-pub-sub, dlux-plugins, dlux-global-planner, dwb-critics, dwb-msgs, global-planner-tests }:
buildRosPackage {
  pname = "ros-kinetic-robot-navigation";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/robot_navigation/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "8d5acf7afc3e0328e9b8fdfd082799acb0ff23af80cc4b72ffd9aaa5a0c650e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nav-core-adapter nav-grid-pub-sub dlux-plugins nav-grid nav-grid-iterators dlux-global-planner nav-core2 costmap-queue dwb-critics nav-2d-msgs dwb-plugins nav-2d-utils locomove-base dwb-msgs locomotor locomotor-msgs global-planner-tests dwb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
