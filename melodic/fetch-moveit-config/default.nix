
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, moveit-python, catkin, moveit-ros-visualization, fetch-description, fetch-ikfast-plugin, rospy, moveit-kinematics, rostest, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-melodic-fetch-moveit-config";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_moveit_config/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "4f73b1e8be984225f273f28a4ad0796aff7b509e036f0445ced3453c4476ec18";
  };

  buildType = "catkin";
  buildInputs = [ fetch-description ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher moveit-kinematics xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager moveit-python moveit-ros-visualization fetch-ikfast-plugin rospy fetch-description moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fetch_urdf with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
