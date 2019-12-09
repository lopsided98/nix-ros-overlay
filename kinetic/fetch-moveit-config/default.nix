
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-planners-ompl, joint-state-publisher, fetch-ikfast-plugin, xacro, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, moveit-python, catkin, moveit-ros-visualization, moveit-kinematics, rospy, fetch-description, rostest, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-fetch-moveit-config";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_moveit_config/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "df15dfe81f4a95716deaa31c1d02aa5e80c44d2cf5f1b02abaef2e004129c5e5";
  };

  buildType = "catkin";
  buildInputs = [ fetch-description ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ moveit-planners-ompl joint-state-publisher fetch-ikfast-plugin xacro robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager moveit-python moveit-ros-visualization moveit-kinematics rospy fetch-description moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the fetch_urdf with the MoveIt Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
