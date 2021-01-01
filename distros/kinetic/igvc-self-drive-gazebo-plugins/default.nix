
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gazebo-ros, gazebo-ros-pkgs, hector-gazebo-plugins, hector-models, robot-state-publisher, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-igvc-self-drive-gazebo-plugins";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/robustify/igvc_self_drive_sim-release/archive/release/kinetic/igvc_self_drive_gazebo_plugins/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "3691f480209b027c3db97c2fc6cc46e4dfa5766be2a0f504ff8fbe5a0ef8618e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure gazebo-ros gazebo-ros-pkgs hector-gazebo-plugins hector-models robot-state-publisher roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for IGVC Self-Drive simulator'';
    license = with lib.licenses; [ bsd2 ];
  };
}
