
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, code-coverage, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, trajectory-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-controller";
  version = "0.17.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_trajectory_controller/0.17.2-1.tar.gz";
    name = "0.17.2-1.tar.gz";
    sha256 = "4c8b612ce523760bd97ef16961d516adbe64ee44f9c035da71277466c05586d2";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  checkInputs = [ code-coverage controller-manager rostest xacro ];
  propagatedBuildInputs = [ actionlib angles control-msgs control-toolbox controller-interface hardware-interface pluginlib realtime-tools roscpp trajectory-msgs urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
