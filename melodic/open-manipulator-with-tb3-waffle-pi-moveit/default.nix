
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, moveit-kinematics, open-manipulator-with-tb3-description, catkin, moveit-setup-assistant, robot-state-publisher, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-with-tb3-waffle-pi-moveit";
  version = "1.1.0-r2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/open_manipulator_with_tb3-release/archive/release/melodic/open_manipulator_with_tb3_waffle_pi_moveit/1.1.0-2.tar.gz;
    sha256 = "64d1e46dbb348ebc614e922e5fd66f0a8086e36133c4212342b01aaa7a37da79";
  };

  buildInputs = [ open-manipulator-with-tb3-description ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics open-manipulator-with-tb3-description moveit-setup-assistant robot-state-publisher joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the om_with_tb3 with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
