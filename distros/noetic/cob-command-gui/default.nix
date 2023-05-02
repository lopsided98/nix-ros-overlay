
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, python3Packages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-command-gui";
  version = "0.6.32-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_command_gui/0.6.32-1.tar.gz";
    name = "0.6.32-1.tar.gz";
    sha256 = "5079ca7fb8e1edec99458abc9b969badfd0ef9aa76b1eb679824eecc3e4daaf1";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-msgs cob-script-server python3Packages.pygobject3 roslib rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
