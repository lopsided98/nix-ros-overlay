
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, ncurses, rosbag, roscpp, rqt-bag, rviz, std-msgs, towr, visualization-msgs, xpp-hyq, xpp-msgs, xpp-states, xterm }:
buildRosPackage {
  pname = "ros-melodic-towr-ros";
  version = "1.4.1";

  src = fetchurl {
    url = "https://github.com/ethz-adrl/towr-release/archive/release/melodic/towr_ros/1.4.1-0.tar.gz";
    name = "1.4.1-0.tar.gz";
    sha256 = "fd30887f7c1a5dcd841ed043da22a724bc30cc47f3db12593a0da5d7a99ae854";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation message-runtime ncurses rosbag roscpp rqt-bag rviz std-msgs towr visualization-msgs xpp-hyq xpp-msgs xpp-states xterm ];
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
