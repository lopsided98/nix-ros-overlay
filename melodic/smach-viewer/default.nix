
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, smach-ros, rostest, smach-msgs, graphviz }:
buildRosPackage {
  pname = "ros-melodic-smach-viewer";
  version = "2.0.2";

  src = fetchurl {
    url = https://github.com/jbohren/executive_smach_visualization-release/archive/release/melodic/smach_viewer/2.0.2-0.tar.gz;
    sha256 = "8584bd38b3751fa90a38c2b30e2a4d16882ebfcf49508be583d895856bb0c4e1";
  };

  propagatedBuildInputs = [ smach-msgs smach-ros graphviz pythonPackages.wxPython ];
  nativeBuildInputs = [ rostest catkin ];

  meta = {
    description = ''The smach viewer is a GUI that shows the state of hierarchical
    SMACH state machines. It can visualize the possible transitions
    between states, as well as the currently active state and the
    values of user data that is passed around between states. The
    smach viewer uses the SMACH debugging interface based on
    the <a href="http://www.ros.org/wiki/smach_msgs">smach
    messages</a> to gather information from running state machines.'';
    #license = lib.licenses.BSD;
  };
}
