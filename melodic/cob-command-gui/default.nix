
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, pythonPackages, roslib, catkin, rospy, cob-script-server }:
buildRosPackage {
  pname = "ros-melodic-cob-command-gui";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_command_gui/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "21a5bb8f2619868678ef2ba20893b78bcb378393d19b5ebebe034405f510a16d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs pythonPackages.pygtk roslib pythonPackages.pygraphviz rospy cob-script-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
