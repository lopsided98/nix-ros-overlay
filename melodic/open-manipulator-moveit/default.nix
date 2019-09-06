
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, moveit-setup-assistant, robot-state-publisher, open-manipulator-description, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-moveit";
  version = "2.0.1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator-release/archive/release/melodic/open_manipulator_moveit/2.0.1-0.tar.gz";
    name = "2.0.1-0.tar.gz";
    sha256 = "3c42db504d582107d35edba1019fc8764f4082573f47bfb41e53e89230d21488";
  };

  buildType = "catkin";
  buildInputs = [ open-manipulator-description ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics moveit-setup-assistant robot-state-publisher open-manipulator-description joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the open_manipulator with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
