
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, python3Packages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-command-gui";
  version = "0.6.30-r2";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/noetic/cob_command_gui/0.6.30-2.tar.gz";
    name = "0.6.30-2.tar.gz";
    sha256 = "666ad7dac6c58297898a5c7993959fead393b7e7df01f33568bd35e9cc2bb892";
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
