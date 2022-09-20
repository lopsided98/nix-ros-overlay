
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, khi-duaro-description, khi-duaro-ikfast-plugin, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-simple-controller-manager, robot-state-publisher, roslaunch, rostest, rviz, tf, xacro }:
buildRosPackage {
  pname = "ros-noetic-khi-duaro-moveit-config";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/noetic/khi_duaro_moveit_config/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "2bd499fbbe1bf10d666740baf31871cbb07ae712e22fc6f5babcc9669d2e1bfe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joint-state-publisher khi-duaro-description khi-duaro-ikfast-plugin moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-simple-controller-manager robot-state-publisher rviz tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_duaro with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
