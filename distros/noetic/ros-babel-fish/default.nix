
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, geometry-msgs, openssl, ros-babel-fish-test-msgs, rosapi, roscpp, roscpp-tutorials, rosgraph-msgs, roslib, rostest, std-msgs, std-srvs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-ros-babel-fish";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/StefanFabian/ros_babel_fish-release/archive/release/noetic/ros_babel_fish/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "a6c044f3285c529be6833c499a7ea5dba2cd99f170c51e9a544b0b1ae0730e03";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ geometry-msgs ros-babel-fish-test-msgs rosapi roscpp-tutorials rosgraph-msgs rostest std-msgs std-srvs visualization-msgs ];
  propagatedBuildInputs = [ actionlib openssl roscpp roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A runtime message handler for ROS.
    Allows subscription, publishing, calling of services and actions with messages known only at runtime.'';
    license = with lib.licenses; [ mit ];
  };
}
