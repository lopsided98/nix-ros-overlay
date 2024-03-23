
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, python3Packages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-command-gui";
  version = "0.6.34-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_command_gui/0.6.34-1.tar.gz";
    name = "0.6.34-1.tar.gz";
    sha256 = "86fa80ab0ff6cc1378313d7167c253a26ab7d4017ce6949489903d39a53d1431";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ cob-msgs cob-script-server python3Packages.pygobject3 roslib rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "This package provides a simple GUI for operating Care-O-bot.";
    license = with lib.licenses; [ asl20 ];
  };
}
