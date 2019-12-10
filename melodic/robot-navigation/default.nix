
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-queue, dlux-global-planner, dlux-plugins, dwb-critics, dwb-local-planner, dwb-msgs, dwb-plugins, global-planner-tests, locomotor, locomotor-msgs, locomove-base, nav-2d-msgs, nav-2d-utils, nav-core-adapter, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub }:
buildRosPackage {
  pname = "ros-melodic-robot-navigation";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/robot_navigation/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "c7d0ad170d41279ececdacd19f49e8e5116edf8b45a0be3f66a0fe5a707b9c08";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-queue dlux-global-planner dlux-plugins dwb-critics dwb-local-planner dwb-msgs dwb-plugins global-planner-tests locomotor locomotor-msgs locomove-base nav-2d-msgs nav-2d-utils nav-core-adapter nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
