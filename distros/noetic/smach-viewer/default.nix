
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, graphviz, gtk3, pythonPackages, rostest, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-noetic-smach-viewer";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/noetic/smach_viewer/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "a95f02adf13d5498bd088ccbd370fb31eb2fefaaf8dfe8ef702c74385beec500";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ graphviz gtk3 pythonPackages.pygobject3 pythonPackages.wxPython smach-msgs smach-ros ];
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
