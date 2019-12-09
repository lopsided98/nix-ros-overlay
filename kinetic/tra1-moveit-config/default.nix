
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, joint-state-publisher, moveit-planners-ompl, xacro, tra1-description, moveit-ros-warehouse, robot-state-publisher, moveit-ros-move-group, moveit-simple-controller-manager, catkin, rviz, warehouse-ros, moveit-ros-visualization, moveit-kinematics, roslaunch, rostest, moveit-fake-controller-manager }:
buildRosPackage {
  pname = "ros-kinetic-tra1-moveit-config";
  version = "1.0.10";

  src = fetchurl {
    url = "https://github.com/tork-a/minas-release/archive/release/kinetic/tra1_moveit_config/1.0.10-0.tar.gz";
    name = "1.0.10-0.tar.gz";
    sha256 = "09f1c42eb6952a5c1a8f6ef194a22b0f8d926d9a33dd3dcd9a516093adeac192";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joy joint-state-publisher moveit-planners-ompl xacro tra1-description moveit-ros-warehouse robot-state-publisher moveit-ros-move-group moveit-simple-controller-manager rviz warehouse-ros moveit-ros-visualization moveit-kinematics moveit-fake-controller-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the tra1 with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
