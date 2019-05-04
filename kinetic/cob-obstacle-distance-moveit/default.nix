
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-perception, cob-control-msgs, boost, catkin, roscpp, pkg-config, cob-srvs, geometric-shapes, moveit-core, rospy, tf-conversions, moveit-msgs, eigen-conversions, tf, moveit-ros-planning-interface, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-obstacle-distance-moveit";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_obstacle_distance_moveit/0.7.1-0.tar.gz;
    sha256 = "94e6eb8f8e4dc2c6b2ed2fca352f9c51df20c018cb91687c436e07a8f0ec4d23";
  };

  buildInputs = [ boost cob-control-msgs moveit-ros-perception pkg-config roscpp cob-srvs geometric-shapes moveit-core tf-conversions moveit-msgs eigen-conversions tf moveit-ros-planning-interface geometry-msgs ];
  propagatedBuildInputs = [ boost cob-control-msgs moveit-ros-perception pkg-config roscpp cob-srvs geometric-shapes moveit-core rospy tf-conversions moveit-msgs eigen-conversions tf moveit-ros-planning-interface geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides nodes for calculating the minimal distance to robot links, obstacles and octomap using MoveIt!'s PlanningSceneMonitor'';
    license = with lib.licenses; [ asl20 ];
  };
}
