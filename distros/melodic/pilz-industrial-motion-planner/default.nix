
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, code-coverage, eigen-conversions, joint-limits-interface, kdl-conversions, moveit-core, moveit-msgs, moveit-resources-panda-moveit-config, moveit-resources-prbt-moveit-config, moveit-resources-prbt-pg70-support, moveit-resources-prbt-support, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, orocos-kdl, pilz-industrial-motion-planner-testutils, pluginlib, roscpp, rostest, rosunit, tf2, tf2-eigen, tf2-geometry-msgs, tf2-kdl, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-planner";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/pilz_industrial_motion_planner/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "f25c57870aed98bda6bed473e6877555a9bc37fb6e911a2627d71784614fecd5";
  };

  buildType = "catkin";
  checkInputs = [ cmake-modules code-coverage moveit-resources-panda-moveit-config moveit-resources-prbt-moveit-config moveit-resources-prbt-pg70-support moveit-resources-prbt-support pilz-industrial-motion-planner-testutils rostest rosunit ];
  propagatedBuildInputs = [ eigen-conversions joint-limits-interface kdl-conversions moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface orocos-kdl pluginlib roscpp tf2 tf2-eigen tf2-geometry-msgs tf2-kdl tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequences thereof.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
