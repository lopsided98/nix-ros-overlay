
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, color-util, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-grid, nav-grid-iterators, nav-grid-pub-sub, pluginlib, robot-nav-rviz-plugins, rosbag, roscpp, roslaunch, roslint, rviz }:
buildRosPackage {
  pname = "ros-kinetic-robot-nav-viz-demos";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/robot_nav_viz_demos/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "9789b6c7ac97845db647adedc62c80a6ef8c0afedd3a207a5c5fa2371d83417f";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ angles color-util geometry-msgs nav-2d-msgs nav-2d-utils nav-grid nav-grid-iterators nav-grid-pub-sub pluginlib robot-nav-rviz-plugins rosbag roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for testing/demonstrating the robot_nav_rviz_plugins and color_util packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
