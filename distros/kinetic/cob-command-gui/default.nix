
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-gui";
  version = "0.6.18-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_gui/0.6.18-1.tar.gz";
    name = "0.6.18-1.tar.gz";
    sha256 = "ec07240aa936126b9295c094db87f11206782c43e5b80ec7a3ca3e56752e22c0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-script-server pythonPackages.pygraphviz pythonPackages.pygtk roslib rospy ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
