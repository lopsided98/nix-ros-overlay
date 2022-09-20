
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, khi-rs-description, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, robot-state-publisher, roslaunch, rostest, rviz, tf, xacro }:
buildRosPackage {
  pname = "ros-melodic-khi-rs007n-moveit-config";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_rs007n_moveit_config/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "8dcf45cb635bcb6fdb87094daf598e94ecc5a9748067c6550b9c139b5d72400f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joint-state-publisher khi-rs-description moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization robot-state-publisher rviz tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_rs007n with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
