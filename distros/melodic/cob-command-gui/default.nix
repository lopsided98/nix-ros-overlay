
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-command-gui";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_command_gui/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "3644232d816a6243f187a4611b82d0d5fc00452235d48fcd9f7b0f2675fb3ab4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-script-server pythonPackages.pygraphviz pythonPackages.pygtk roslib rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
