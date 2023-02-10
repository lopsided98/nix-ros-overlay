
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, angles, catkin, cmake-modules, code-coverage, control-msgs, control-toolbox, controller-interface, controller-manager, hardware-interface, pluginlib, realtime-tools, roscpp, rostest, trajectory-msgs, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_trajectory_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "0ab87d3745b840add650c2d25dca07c57c04ecff4d8e87b2bbe2b2933dc3cbf3";
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
