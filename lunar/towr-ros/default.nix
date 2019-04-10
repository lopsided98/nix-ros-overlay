
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xpp-states, xpp-msgs, xpp-hyq, rosbag, catkin, rqt-bag, xterm, roscpp, message-generation, rviz, ncurses, visualization-msgs, message-runtime, std-msgs, towr }:
buildRosPackage {
  pname = "ros-lunar-towr-ros";
  version = "1.4.1";

  src = fetchurl {
    url = https://github.com/ethz-adrl/towr-release/archive/release/lunar/towr_ros/1.4.1-0.tar.gz;
    sha256 = "749f5dc6c5b60866d9cfc59472d77a1adaaa1b854a890a6cfbf0bd23b52cb306";
  };

  buildInputs = [ xpp-states xpp-msgs rosbag roscpp message-generation ncurses visualization-msgs message-runtime std-msgs towr ];
  propagatedBuildInputs = [ xpp-states xpp-msgs xpp-hyq rosbag roscpp xterm rqt-bag message-generation rviz ncurses visualization-msgs message-runtime std-msgs towr ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A ROS dependent wrapper for
    <a href="http://wiki.ros.org/towr">towr</a>.
    Adds a keyboard user interface to set different goal states, motions
    and robots and visualizes the produced motions plan in rviz using
    <a href="http://wiki.ros.org/xpp">xpp</a>.'';
    #license = lib.licenses.BSD;
  };
}
