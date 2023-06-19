
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, khi-rs-description, khi-rs-ikfast-plugin, moveit-fake-controller-manager, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, robot-state-publisher, roslaunch, rostest, rviz, tf, xacro }:
buildRosPackage {
  pname = "ros-melodic-khi-rs025n-moveit-config";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/melodic/khi_rs025n_moveit_config/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "f1bf0e52921df34d4827c1af05c6c876278a7d03c178c2233f99a0cbae989fdf";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ joint-state-publisher khi-rs-description khi-rs-ikfast-plugin moveit-fake-controller-manager moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization robot-state-publisher rviz tf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_rs025n with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
