
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-queue, dlux-global-planner, dlux-plugins, dwb-critics, dwb-local-planner, dwb-msgs, dwb-plugins, global-planner-tests, locomotor, locomotor-msgs, locomove-base, nav-2d-msgs, nav-2d-utils, nav-core-adapter, nav-core2, nav-grid, nav-grid-iterators, nav-grid-pub-sub, nav-grid-server }:
buildRosPackage {
  pname = "ros-kinetic-robot-navigation";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/robot_navigation/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "ffaee135b17ee7c7292084b19bef50286a24047596c696ca211175c7febe5295";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-queue dlux-global-planner dlux-plugins dwb-critics dwb-local-planner dwb-msgs dwb-plugins global-planner-tests locomotor locomotor-msgs locomove-base nav-2d-msgs nav-2d-utils nav-core-adapter nav-core2 nav-grid nav-grid-iterators nav-grid-pub-sub nav-grid-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
