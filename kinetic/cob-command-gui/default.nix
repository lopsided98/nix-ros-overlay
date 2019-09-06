
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-script-server, catkin, pythonPackages, rospy, cob-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-cob-command-gui";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_command_tools-release/archive/release/kinetic/cob_command_gui/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "e803d82f1412f528941dbea3324cc08addb5d9bca3be142353e7907570fff89c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-script-server pythonPackages.pygtk pythonPackages.pygraphviz rospy cob-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a simple GUI for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
