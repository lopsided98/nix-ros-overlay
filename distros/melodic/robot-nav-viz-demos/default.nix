
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, color-util, geometry-msgs, nav-2d-msgs, nav-2d-utils, nav-grid, nav-grid-iterators, nav-grid-pub-sub, pluginlib, robot-nav-rviz-plugins, rosbag, roscpp, roslaunch, roslint, rviz }:
buildRosPackage {
  pname = "ros-melodic-robot-nav-viz-demos";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DLu/robot_navigation-release/archive/release/melodic/robot_nav_viz_demos/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "baf7e7445b4420d69bff113107f7c33c6716e2fe33dca4494411b7487e8449bf";
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
