
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, robot-state-publisher, rviz, seed-r7-description, tf, xacro }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-moveit-config";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_moveit_config/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "3bf42b865e43f23c2c83ddd074c37d2d76952bef9e9f937e5d59afaeee774ef3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant robot-state-publisher rviz seed-r7-description tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for bringup.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
