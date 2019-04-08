
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, pythonPackages, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-gui";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_gui/0.6.11-0.tar.gz;
    sha256 = "6572ebda4ec91cf1102c81a2a34ab308915a176e96c36ef8fe6b91a671fd7e9d";
  };

  propagatedBuildInputs = [ roslib rospy cob-script-server cob-msgs pythonPackages.pygtk pythonPackages.pygraphviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    #license = lib.licenses.Apache 2.0;
  };
}
