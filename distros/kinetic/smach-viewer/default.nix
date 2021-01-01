
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, graphviz, pythonPackages, rostest, smach-msgs, smach-ros }:
buildRosPackage {
  pname = "ros-kinetic-smach-viewer";
  version = "2.0.2";

  src = fetchurl {
    url = "https://github.com/jbohren/executive_smach_visualization-release/archive/release/kinetic/smach_viewer/2.0.2-0.tar.gz";
    name = "2.0.2-0.tar.gz";
    sha256 = "8473346bc221e0342a8d18c5f42a2fbf0b4f0bdd195bceed01d97bc121d1e26d";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  propagatedBuildInputs = [ graphviz pythonPackages.wxPython smach-msgs smach-ros ];
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
