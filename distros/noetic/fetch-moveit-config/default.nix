
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fetch-description, fetch-ikfast-plugin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-python, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, robot-state-publisher, rospy, rostest, xacro }:
buildRosPackage {
  pname = "ros-noetic-fetch-moveit-config";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_moveit_config/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "03c5926ed7872fe04a801ab4e79feefef1089bdde445539e81cbcfe381740a15";
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
