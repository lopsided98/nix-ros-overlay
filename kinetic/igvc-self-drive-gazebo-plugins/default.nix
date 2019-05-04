
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, gazebo-ros-pkgs, hector-models, catkin, hector-gazebo-plugins, robot-state-publisher, dynamic-reconfigure, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-igvc-self-drive-gazebo-plugins";
  version = "0.1.4-r1";

  src = fetchurl {
    url = https://github.com/robustify/igvc_self_drive_sim-release/archive/release/kinetic/igvc_self_drive_gazebo_plugins/0.1.4-1.tar.gz;
    sha256 = "3691f480209b027c3db97c2fc6cc46e4dfa5766be2a0f504ff8fbe5a0ef8618e";
  };

  buildInputs = [ gazebo-ros roscpp dynamic-reconfigure ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs hector-gazebo-plugins hector-models robot-state-publisher dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugins for IGVC Self-Drive simulator'';
    license = with lib.licenses; [ bsd2 ];
  };
}
