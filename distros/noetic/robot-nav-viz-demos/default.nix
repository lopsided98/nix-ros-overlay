
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, color-util, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-grid, nav-grid-iterators, nav-grid-pub-sub, pluginlib, robot-nav-rviz-plugins, rosbag, roscpp, roslaunch, roslint, rviz }:
buildRosPackage {
  pname = "ros-noetic-robot-nav-viz-demos";
  version = "0.3.0-r2";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/noetic/robot_nav_viz_demos/0.3.0-2.tar.gz";
    name = "0.3.0-2.tar.gz";
    sha256 = "d73d2fb32772b5deae9a2b15d2e9b1d3b773b20dccf79474cde619367175cd6b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ angles color-util geometry-msgs nav-2d-msgs nav-2d-utils nav-grid nav-grid-iterators nav-grid-pub-sub pluginlib robot-nav-rviz-plugins rosbag roscpp rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demos for testing/demonstrating the robot_nav_rviz_plugins and color_util packages'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
