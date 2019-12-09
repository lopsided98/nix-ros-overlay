
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-setup-assistant, moveit-ros-move-group, tf, catkin, rviz, moveit-ros-visualization, seed-r7-description, moveit-kinematics, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-moveit-config";
  version = "0.3.3-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_moveit_config/0.3.3-2.tar.gz";
    name = "0.3.3-2.tar.gz";
    sha256 = "3bf42b865e43f23c2c83ddd074c37d2d76952bef9e9f937e5d59afaeee774ef3";
  };

  buildType = "catkin";
  buildInputs = [ seed-r7-description ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher xacro robot-state-publisher moveit-setup-assistant moveit-ros-move-group tf rviz moveit-ros-visualization seed-r7-description moveit-kinematics moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for bringup.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
