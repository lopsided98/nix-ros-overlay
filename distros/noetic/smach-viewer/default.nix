
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, graphviz, gtk3, python3Packages, rostest, smach-msgs, smach-ros, xdot }:
buildRosPackage {
  pname = "ros-noetic-smach-viewer";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/noetic/smach_viewer/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "58db3542bf92acec6760e9555dd809a9b7d5a870f9c3c4483ab64898b9a49246";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ cv-bridge graphviz gtk3 python3Packages.pygobject3 python3Packages.pyqt5 python3Packages.rospkg python3Packages.wxPython_4_0 smach-msgs smach-ros xdot ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The smach viewer is a GUI that shows the state of hierarchical
    SMACH state machines. It can visualize the possible transitions
    between states, as well as the currently active state and the
    values of user data that is passed around between states. The
    smach viewer uses the SMACH debugging interface based on
    the <a href="http://www.ros.org/wiki/smach_msgs">smach
    messages</a> to gather information from running state machines.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
