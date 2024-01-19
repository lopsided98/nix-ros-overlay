
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, python3Packages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-command-gui";
  version = "0.6.33-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_command_gui/0.6.33-1.tar.gz";
    name = "0.6.33-1.tar.gz";
    sha256 = "1a484c8da8270240c261e8280a70c5ee6fd82564c2aba07a2e68a9ae839ed584";
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
