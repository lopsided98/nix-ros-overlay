
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, moveit-python, moveit-kinematics, catkin, fetch-description, rostest, moveit-simple-controller-manager, robot-state-publisher, fetch-ikfast-plugin, rospy, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-fetch-moveit-config";
  version = "0.8.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/melodic/fetch_moveit_config/0.8.1-0.tar.gz;
    sha256 = "cd8f245340ae00e0138b66eebbe75fb95da8a60bfbe05b329d20160f098a858f";
  };

  buildInputs = [ fetch-description ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-python moveit-kinematics rospy moveit-simple-controller-manager robot-state-publisher fetch-ikfast-plugin fetch-description joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fetch_urdf with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
