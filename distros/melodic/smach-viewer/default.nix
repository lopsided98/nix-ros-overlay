
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, graphviz, gtk3, pythonPackages, rostest, smach-msgs, smach-ros, xdot }:
buildRosPackage {
  pname = "ros-melodic-smach-viewer";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/melodic/smach_viewer/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "81ee8ed7ad13a9a624716e3cf5fe5928f6468f809c797b02911184172869af32";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ cv-bridge graphviz gtk3 pythonPackages.pygobject3 pythonPackages.pyqt5 pythonPackages.rospkg pythonPackages.wxPython smach-msgs smach-ros xdot ];
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
