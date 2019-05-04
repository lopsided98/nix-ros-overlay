
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-visualstates";
  version = "0.2.2";

  src = fetchurl {
    url = https://github.com/JdeRobot/VisualStates-release/archive/release/kinetic/visualstates/0.2.2-0.tar.gz;
    sha256 = "58fd54d964dc145ed7b3c3e0b0cad11dd878bcdb26c49991d9ec7f23fc77bb63";
  };

  buildInputs = [ std-msgs roscpp rospy ];
  propagatedBuildInputs = [ pythonPackages.rospkg pythonPackages.pyqt5 rospy std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The VisualStates is reactive hierarchical visual robot planning tool.'';
    license = with lib.licenses; [ gpl3 ];
  };
}
