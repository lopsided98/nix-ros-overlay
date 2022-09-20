
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, catkin, gazebo-ros, gazebo-ros-pkgs, robot-state-publisher, roscpp, rospy, rostest, rviz, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-audibot-gazebo";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/noetic/audibot_gazebo/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "a585f6842f3f584e737997b3f9cd682e766d2ab83cb99f3d13dc91bc81f30693";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rospy rostest ];
  propagatedBuildInputs = [ audibot-description gazebo-ros gazebo-ros-pkgs robot-state-publisher roscpp rviz tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo model plugin to simulate Audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
