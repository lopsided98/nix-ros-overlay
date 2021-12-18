
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diff-drive-controller, gazebo-ros-control, hector-gazebo-plugins, joint-state-controller, joint-state-publisher, joint-state-publisher-gui, position-controllers, robot-state-publisher, roslaunch, rviz, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-mir-description";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mir_robot-release/archive/release/noetic/mir_description/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "1e308f4ab82aa18f324050e6aa3f705b304157865ec7b241bf29cabb988b8638";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ diff-drive-controller gazebo-ros-control hector-gazebo-plugins joint-state-controller joint-state-publisher joint-state-publisher-gui position-controllers robot-state-publisher rviz urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF description of the MiR100 robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
