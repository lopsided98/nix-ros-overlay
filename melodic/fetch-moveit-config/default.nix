
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, moveit-python, moveit-kinematics, catkin, fetch-description, rostest, moveit-simple-controller-manager, robot-state-publisher, fetch-ikfast-plugin, rospy, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-fetch-moveit-config";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_moveit_config/0.8.0-0.tar.gz;
    sha256 = "be73df6ce2a5da34245f9786daf8a85415518960a67c911182e07175edcbe33b";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-python moveit-kinematics rospy moveit-simple-controller-manager robot-state-publisher fetch-ikfast-plugin fetch-description joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ fetch-description catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fetch_urdf with the MoveIt Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
