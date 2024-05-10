
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-script-server, python3Packages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-cob-command-gui";
  version = "0.6.35-r2";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_command_tools-release/archive/release/noetic/cob_command_gui/0.6.35-2.tar.gz";
    name = "0.6.35-2.tar.gz";
    sha256 = "54efd4fdc37aaac6c13213c3f4aafc4d93297343bb2df6dd4f005056467028e2";
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
