
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-carrot-planner";
  version = "1.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/carrot_planner/1.16.5-1.tar.gz";
    name = "1.16.5-1.tar.gz";
    sha256 = "0cb3855aaeea49d521ad11e14d48b1f0d2c0a91778e1438f2f0b1f987ef24b7d";
  };

  buildType = "catkin";
  buildInputs = [ tf2-geometry-msgs ];
  propagatedBuildInputs = [ base-local-planner costmap-2d eigen nav-core pluginlib roscpp tf2 tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This planner attempts to find a legal place to put a carrot for the robot to follow. It does this by moving back along the vector between the robot and the goal point.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
