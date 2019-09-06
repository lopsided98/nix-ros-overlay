
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-visual-tools, jog-msgs, control-msgs, joy, catkin, rviz, moveit-core, actionlib, moveit-msgs, roslaunch, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-jog-controller";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_controller/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "2e1d30d6a78ecc8f4b32be7853786da128878df658ccf6bdf770ce5016d7db0d";
  };

  buildType = "catkin";
  buildInputs = [ moveit-ros-planning moveit-visual-tools jog-msgs control-msgs rviz moveit-core actionlib moveit-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ moveit-visual-tools moveit-ros-planning jog-msgs control-msgs joy rviz moveit-core actionlib moveit-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jog_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
