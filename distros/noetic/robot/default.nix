
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, diagnostics, executive-smach, filters, geometry, joint-state-publisher, kdl-parser, robot-state-publisher, ros-base, urdf, urdf-parser-plugin, xacro }:
buildRosPackage {
  pname = "ros-noetic-robot";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/metapackages-release/archive/release/noetic/robot/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "3eeb14c57b97190d861e477f4563f6c0d2ae3fafb1e25e672e13a906dd8b12db";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs diagnostics executive-smach filters geometry joint-state-publisher kdl-parser robot-state-publisher ros-base urdf urdf-parser-plugin xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A metapackage which extends ros_base and includes ROS libaries for any robot hardware. It may not contain any GUI dependencies.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
