
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, python3Packages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-command-gui";
  version = "0.6.20-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_command_gui/0.6.20-1.tar.gz";
    name = "0.6.20-1.tar.gz";
    sha256 = "5f2c2ba3c291a72de4b8f837c74b64630ef8d851a6b62e5c315e4f4c1dc750ba";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-script-server python3Packages.pygobject3 roslib rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
