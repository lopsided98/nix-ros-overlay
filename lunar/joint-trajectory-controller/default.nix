
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, trajectory-msgs, realtime-tools, control-toolbox, catkin, rostest, controller-interface, urdf, actionlib, angles, roscpp, xacro }:
buildRosPackage {
  pname = "ros-lunar-joint-trajectory-controller";
  version = "0.13.4";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/lunar/joint_trajectory_controller/0.13.4-0.tar.gz;
    sha256 = "5ea238ec175e3090cbef9cd74996b9d97f8c05be891da00a781ecd6858493b75";
  };

  buildInputs = [ hardware-interface cmake-modules control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp ];
  checkInputs = [ controller-manager rostest xacro ];
  propagatedBuildInputs = [ hardware-interface control-msgs trajectory-msgs realtime-tools control-toolbox controller-interface urdf actionlib angles roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
