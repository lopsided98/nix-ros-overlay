
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roscpp, dynamic-reconfigure }:
buildRosPackage {
  pname = "ros-kinetic-rosparam-handler";
  version = "0.1.4";

  src = fetchurl {
    url = https://github.com/cbandera/rosparam_handler-release/archive/release/kinetic/rosparam_handler/0.1.4-0.tar.gz;
    sha256 = "06fe3ee40f9a9901065ee9bde10fb96f6177fc5bab1fbf40f555f61bb8f51729";
  };

  checkInputs = [ roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ rostest catkin ];

  meta = {
    description = ''An easy wrapper for using parameters in ROS.'';
    #license = lib.licenses.BSD;
  };
}
