
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, xpp-hyq, rosbag, catkin, rqt-bag, xterm, roscpp, message-generation, rviz, ncurses, visualization-msgs, message-runtime, std-msgs, towr }:
buildRosPackage {
  pname = "ros-kinetic-towr-ros";
  version = "1.4.0";

  src = fetchurl {
    url = https://github.com/ethz-adrl/towr-release/archive/release/kinetic/towr_ros/1.4.0-0.tar.gz;
    sha256 = "d041fc24d514401fb9b69119d8ad8a3cd7780469c53fad0ca1cbcd0e494415ab";
  };

  propagatedBuildInputs = [ xpp-states xpp-msgs xpp-hyq rosbag roscpp xterm rqt-bag message-generation rviz ncurses visualization-msgs message-runtime std-msgs towr ];
  nativeBuildInputs = [ xpp-states xpp-msgs rosbag catkin roscpp message-generation ncurses visualization-msgs message-runtime std-msgs towr ];

  meta = {
    description = ''A ROS dependent wrapper for
    <a href="http://wiki.ros.org/towr">towr</a>.
    Adds a keyboard user interface to set different goal states, motions
    and robots and visualizes the produced motions plan in rviz using
    <a href="http://wiki.ros.org/xpp">xpp</a>.'';
    #license = lib.licenses.BSD;
  };
}
