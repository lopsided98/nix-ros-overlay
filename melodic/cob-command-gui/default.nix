
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, pythonPackages, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-melodic-cob-command-gui";
  version = "0.6.14-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_command_gui/0.6.14-1.tar.gz;
    sha256 = "3d4b8e12ebc3b6c7f5214e427cd9b7fe3d22a8639fc05a7f8830b7d703d69d3d";
  };

  propagatedBuildInputs = [ cob-script-server pythonPackages.pygtk pythonPackages.pygraphviz rospy cob-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
