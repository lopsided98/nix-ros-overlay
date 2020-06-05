
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-queue, dlux-global-planner, dlux-plugins, dwb-critics, dwb-local-planner, dwb-msgs, dwb-plugins, global-planner-tests, locomotor, locomotor-msgs, locomove-base, nav-2d-msgs, nav-2d-utils, nav-core-adapter, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub }:
buildRosPackage {
  pname = "ros-noetic-robot-navigation";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/robot_navigation/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "4046b74c02d3a10d59141aa919dbbdd06c1fb2af9f69731d1da09dbe1e353013";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-queue dlux-global-planner dlux-plugins dwb-critics dwb-local-planner dwb-msgs dwb-plugins global-planner-tests locomotor locomotor-msgs locomove-base nav-2d-msgs nav-2d-utils nav-core-adapter nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
