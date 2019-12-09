
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, nav-2d-msgs, nav-core2, pluginlib, catkin, costmap-queue, roscpp, roslint, dwb-local-planner, nav-grid-iterators, angles, nav-2d-utils }:
buildRosPackage {
  pname = "ros-melodic-dwb-critics";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/dwb_critics/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "42ff253d658b161baff427aa5da4a789f5dcf17d61e316cc8f40bd320ce00a3f";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs nav-2d-msgs nav-core2 pluginlib costmap-queue roscpp dwb-local-planner nav-grid-iterators angles nav-2d-utils ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ sensor-msgs nav-grid-iterators geometry-msgs nav-2d-msgs nav-core2 pluginlib costmap-queue dwb-local-planner roscpp angles nav-2d-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Implementations for dwb_local_planner TrajectoryCritic interface'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
