
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, xpp-hyq, rosbag, catkin, rqt-bag, xterm, towr, message-generation, rviz, ncurses, message-runtime, visualization-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-towr-ros";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/ethz-adrl/towr-release/archive/release/kinetic/towr_ros/1.4.1-0.tar.gz;
    sha256 = "d234570a2b4c0b399d520ae66c0e72a8cc07773abfe8829dfb31919d2a5ea4c7";
  };

  buildInputs = [ xpp-states xpp-msgs rosbag towr message-generation ncurses visualization-msgs message-runtime std-msgs roscpp ];
  propagatedBuildInputs = [ xpp-states xpp-msgs xpp-hyq rosbag xterm rqt-bag towr message-generation rviz ncurses visualization-msgs message-runtime std-msgs roscpp ];
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
