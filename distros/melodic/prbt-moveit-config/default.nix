
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-core, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-planning, moveit-ros-visualization, moveit-simple-controller-manager, pluginlib, prbt-hardware-support, prbt-ikfast-manipulator-plugin, prbt-support, robot-state-publisher, roscpp, roslaunch, rostest, rosunit, rviz, xacro }:
buildRosPackage {
  pname = "ros-melodic-prbt-moveit-config";
  version = "0.5.23-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_robots-release/archive/release/melodic/prbt_moveit_config/0.5.23-1.tar.gz";
    name = "0.5.23-1.tar.gz";
    sha256 = "ac90dce368fc651dfcd6ae85eeddbba21c982e95ae556d85602d8322069d22ea";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-core moveit-ros-planning pluginlib roscpp roslaunch rostest rosunit ];
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager prbt-hardware-support prbt-ikfast-manipulator-plugin prbt-support robot-state-publisher rviz xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the prbt with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
