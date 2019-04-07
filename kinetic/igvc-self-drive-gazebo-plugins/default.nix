
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, gazebo-ros-pkgs, hector-gazebo-plugins, catkin, hector-models, robot-state-publisher, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-igvc-self-drive-gazebo-plugins";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/robustify/igvc_self_drive_sim-release/archive/release/kinetic/igvc_self_drive_gazebo_plugins/0.1.4-1.tar.gz;
    sha256 = "3691f480209b027c3db97c2fc6cc46e4dfa5766be2a0f504ff8fbe5a0ef8618e";
  };

  buildInputs = [ gazebo-ros roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs robot-state-publisher dynamic-reconfigure hector-models hector-gazebo-plugins roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for IGVC Self-Drive simulator'';
    #license = lib.licenses.BSD2;
  };
}
