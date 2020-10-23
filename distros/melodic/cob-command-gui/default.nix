
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-command-gui";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/melodic/cob_command_gui/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "7b85c446b55b6d58bc3da6056c814ab1e4097d709aaf78114a55ea4c0dd65009";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-script-server pythonPackages.pygraphviz pythonPackages.pygtk roslib rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
