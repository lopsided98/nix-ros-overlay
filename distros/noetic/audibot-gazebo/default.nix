
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, catkin, gazebo-ros, gazebo-ros-pkgs, nav-msgs, robot-state-publisher, roscpp, rospy, rostest, rviz, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-audibot-gazebo";
  version = "0.2.2-r5";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/noetic/audibot_gazebo/0.2.2-5.tar.gz";
    name = "0.2.2-5.tar.gz";
    sha256 = "15de37b5d94d06fb41dba843b99a81ab686289f625255971ac3e40e3c8523f61";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rospy rostest ];
  propagatedBuildInputs = [ audibot-description gazebo-ros gazebo-ros-pkgs nav-msgs robot-state-publisher roscpp rviz tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo model plugin to simulate Audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
