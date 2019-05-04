
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, fetch-ikfast-plugin, moveit-python, moveit-kinematics, catkin, rostest, moveit-simple-controller-manager, robot-state-publisher, rospy, fetch-description, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-fetch-moveit-config";
  version = "0.7.15";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_moveit_config/0.7.15-0.tar.gz;
    sha256 = "df15dfe81f4a95716deaa31c1d02aa5e80c44d2cf5f1b02abaef2e004129c5e5";
  };

  buildInputs = [ fetch-description ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-python moveit-kinematics fetch-description moveit-simple-controller-manager robot-state-publisher fetch-ikfast-plugin rospy joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fetch_urdf with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
