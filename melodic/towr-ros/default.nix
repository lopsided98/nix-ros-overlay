
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, xpp-hyq, rosbag, catkin, rqt-bag, xterm, roscpp, message-generation, rviz, ncurses, visualization-msgs, message-runtime, std-msgs, towr }:
buildRosPackage {
  pname = "ros-melodic-towr-ros";
  version = "1.4.0";

  src = fetchurl {
    url = https://github.com/ethz-adrl/towr-release/archive/release/melodic/towr_ros/1.4.0-0.tar.gz;
    sha256 = "bc5d15bff32bd5836c651227fe8d737b00fe1f4d5c1e215f6d8913ba2f831dda";
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
