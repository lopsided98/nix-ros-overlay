
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-setup-assistant, moveit-ros-move-group, tf, catkin, rviz, moveit-ros-visualization, seed-r7-description, moveit-kinematics, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-moveit-config";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_moveit_config/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "fe05d8eb712ff6eccd2f079fbecf10e3b9defec16d0d7bdc6c214d577c6a65cf";
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
