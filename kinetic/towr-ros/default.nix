
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ncurses, message-generation, std-msgs, catkin, towr, xterm, xpp-msgs, rviz, visualization-msgs, roscpp, rosbag, message-runtime, xpp-states, xpp-hyq, rqt-bag }:
buildRosPackage {
  pname = "ros-kinetic-towr-ros";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ethz-adrl/towr-release/archive/release/kinetic/towr_ros/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "d234570a2b4c0b399d520ae66c0e72a8cc07773abfe8829dfb31919d2a5ea4c7";
  };

  buildType = "catkin";
  buildInputs = [ ncurses message-runtime std-msgs xpp-msgs visualization-msgs roscpp rosbag message-generation xpp-states towr ];
  propagatedBuildInputs = [ ncurses message-runtime std-msgs towr xterm xpp-msgs rviz visualization-msgs roscpp rosbag message-generation xpp-states xpp-hyq rqt-bag ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS dependent wrapper for
    <a href="http://wiki.ros.org/towr">towr</a>.
    Adds a keyboard user interface to set different goal states, motions
    and robots and visualizes the produced motions plan in rviz using
    <a href="http://wiki.ros.org/xpp">xpp</a>.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
