
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, base-local-planner, catkin, costmap-2d, eigen, nav-core, pluginlib, roscpp, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-carrot-planner";
  version = "1.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation-release/archive/release/melodic/carrot_planner/1.16.4-1.tar.gz";
    name = "1.16.4-1.tar.gz";
    sha256 = "46bd430ab5278ca20b0da0b68e29af2d0307392270ca5508627c7098be6f2786";
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
