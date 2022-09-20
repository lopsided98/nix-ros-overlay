
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-setup-assistant, open-manipulator-with-tb3-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-waffle-moveit";
  version = "1.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/open_manipulator_with_tb3_waffle_moveit/1.1.0-2.tar.gz";
    name = "1.1.0-2.tar.gz";
    sha256 = "48ccf4228562e681d256e965706ea41f90a7fc34ea1b9829ff95529fc4a4b361";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ joint-state-publisher moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-setup-assistant open-manipulator-with-tb3-description robot-state-publisher xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the om_with_tb3 with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
