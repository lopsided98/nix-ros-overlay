
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, graphviz, gtk3, pythonPackages, rostest, smach-msgs, smach-ros, xdot }:
buildRosPackage {
  pname = "ros-melodic-smach-viewer";
  version = "4.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "jbohren";
        repo = "executive_smach_visualization-release";
        rev = "release/melodic/smach_viewer/4.0.1-1";
        sha256 = "sha256-m5J2XvHQJtRmsIpME/SdYR4YrVQ+xpd2o9gbLmUx2TI=";
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
