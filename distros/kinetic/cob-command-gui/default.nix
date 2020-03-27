
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-gui";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_gui/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "c14935b6f21ff300690ff26feb86146305d1681df36b72e43cd0649bbf20d47e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-script-server pythonPackages.pygraphviz pythonPackages.pygtk roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
