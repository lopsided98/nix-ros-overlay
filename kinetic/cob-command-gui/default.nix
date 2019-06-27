
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, pythonPackages, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-gui";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_gui/0.6.12-1.tar.gz;
    sha256 = "4a63e9fe478cc81ab352f8e54633ee203fa6aacf6edcd4bd49291678beb41ba5";
  };

  propagatedBuildInputs = [ cob-script-server pythonPackages.pygtk pythonPackages.pygraphviz rospy cob-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
