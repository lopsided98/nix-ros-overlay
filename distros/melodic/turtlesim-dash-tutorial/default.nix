
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, rospy, turtle-actionlib, turtlesim }:
buildRosPackage {
  pname = "ros-melodic-turtlesim-dash-tutorial";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/banerjs-ros-release/turtlesim_dash_tutorial-release/archive/release/melodic/turtlesim_dash_tutorial/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "60883c74f5ef621c347210e58ab60991c86a138305e0abf18d9f1f40f8fedb3c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib rospy turtle-actionlib turtlesim ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The turtlesim_dash_tutorial package'';
    license = with lib.licenses; [ mit ];
  };
}
