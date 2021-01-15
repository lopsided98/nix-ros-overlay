
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-description, fetch-ikfast-plugin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-python, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, robot-state-publisher, rospy, rostest, xacro }:
buildRosPackage {
  pname = "ros-melodic-fetch-moveit-config";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_moveit_config/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "4f73b1e8be984225f273f28a4ad0796aff7b509e036f0445ced3453c4476ec18";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ fetch-description fetch-ikfast-plugin joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-python moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager robot-state-publisher rospy xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fetch_urdf with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
