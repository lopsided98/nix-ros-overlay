
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, joint-limits-interface, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-prbt-moveit-config, moveit-resources-prbt-pg70-support, moveit-resources-prbt-support, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, orocos-kdl, pilz-industrial-motion-planner-testutils, pluginlib, roscpp, rostest, rosunit, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion-planner";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/pilz_industrial_motion_planner/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "bdbbbd80e3f3ac2234523d497af371515502e1de2acf541766f1e408b02f9d26";
  };

  buildType = "catkin";
  checkInputs = [ cmake-modules code-coverage moveit-resources-panda-moveit-config moveit-resources-prbt-moveit-config moveit-resources-prbt-pg70-support moveit-resources-prbt-support pilz-industrial-motion-planner-testutils rostest rosunit ];
  propagatedBuildInputs = [ joint-limits-interface moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface orocos-kdl pluginlib roscpp tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequences thereof.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
