
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-queue, locomotor, nav-2d-msgs, nav-2d-utils, dlux-global-planner, locomove-base, locomotor-msgs, nav-grid-pub-sub, dwb-msgs, dwb-critics, dwb-plugins, global-planner-tests, nav-grid, nav-core2, catkin, dlux-plugins, nav-core-adapter, dwb-local-planner, nav-grid-iterators }:
buildRosPackage {
  pname = "ros-kinetic-robot-navigation";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/robot_navigation/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "8d5acf7afc3e0328e9b8fdfd082799acb0ff23af80cc4b72ffd9aaa5a0c650e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ global-planner-tests nav-grid-iterators locomove-base dwb-msgs locomotor-msgs nav-grid nav-core2 costmap-queue nav-grid-pub-sub dlux-plugins locomotor dwb-local-planner nav-core-adapter nav-2d-msgs dwb-critics dwb-plugins nav-2d-utils dlux-global-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
