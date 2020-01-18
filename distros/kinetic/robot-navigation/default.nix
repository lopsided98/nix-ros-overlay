
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-queue, dlux-global-planner, dlux-plugins, dwb-critics, dwb-local-planner, dwb-msgs, dwb-plugins, global-planner-tests, locomotor, locomotor-msgs, locomove-base, nav-2d-msgs, nav-2d-utils, nav-core-adapter, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub }:
buildRosPackage {
  pname = "ros-kinetic-robot-navigation";
  version = "0.2.5";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/robot_navigation/0.2.5-0.tar.gz";
    name = "0.2.5-0.tar.gz";
    sha256 = "8d5acf7afc3e0328e9b8fdfd082799acb0ff23af80cc4b72ffd9aaa5a0c650e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-queue dlux-global-planner dlux-plugins dwb-critics dwb-local-planner dwb-msgs dwb-plugins global-planner-tests locomotor locomotor-msgs locomove-base nav-2d-msgs nav-2d-utils nav-core-adapter nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
