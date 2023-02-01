
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, class-loader, eigen, geometric-shapes, interactive-markers, moveit-ros-perception, moveit-ros-planning-interface, moveit-ros-robot-interaction, moveit-ros-warehouse, object-recognition-msgs, ogre1_9, pkg-config, pluginlib, qt5, rosconsole, roscpp, rospy, rostest, rviz, tf2-eigen }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-visualization";
  version = "1.0.11-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "moveit-release";
        rev = "release/melodic/moveit_ros_visualization/1.0.11-1";
        sha256 = "sha256-D6bREP4taz0HYjUZqfQQBrsRUEDnYkqLgIEQ7DcBX18=";
      };

  buildType = "catkin";
  buildInputs = [ catkin class-loader eigen ogre1_9 pkg-config qt5.qtbase ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ geometric-shapes interactive-markers moveit-ros-perception moveit-ros-planning-interface moveit-ros-robot-interaction moveit-ros-warehouse object-recognition-msgs pluginlib rosconsole roscpp rospy rviz tf2-eigen ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = ''Components of MoveIt! that offer visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
