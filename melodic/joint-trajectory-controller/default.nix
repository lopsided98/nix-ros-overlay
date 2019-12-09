
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, xacro, controller-interface, urdf, control-toolbox, controller-manager, hardware-interface, actionlib, cmake-modules, catkin, realtime-tools, roscpp, angles, rostest, control-msgs }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-controller";
  version = "0.15.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_trajectory_controller/0.15.0-0.tar.gz";
    name = "0.15.0-0.tar.gz";
    sha256 = "d7624bbbca732b5e17524908ec9e6214c448aa9cc33ffddb3538e9269c6bd313";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs controller-interface urdf control-toolbox hardware-interface actionlib cmake-modules realtime-tools roscpp angles control-msgs ];
  checkInputs = [ xacro rostest controller-manager ];
  propagatedBuildInputs = [ trajectory-msgs controller-interface urdf control-toolbox hardware-interface actionlib realtime-tools roscpp angles control-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
