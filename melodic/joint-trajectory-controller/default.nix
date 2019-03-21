
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, controller-manager, hardware-interface, cmake-modules, control-msgs, trajectory-msgs, realtime-tools, catkin, control-toolbox, rostest, controller-interface, urdf, actionlib, angles, roscpp, xacro }:
buildRosPackage {
  pname = "ros-melodic-joint-trajectory-controller";
  version = "0.15.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/joint_trajectory_controller/0.15.0-0.tar.gz;
    sha256 = "d7624bbbca732b5e17524908ec9e6214c448aa9cc33ffddb3538e9269c6bd313";
  };

  checkInputs = [ controller-manager rostest xacro ];
  propagatedBuildInputs = [ hardware-interface control-msgs realtime-tools control-toolbox trajectory-msgs controller-interface urdf actionlib angles roscpp ];
  nativeBuildInputs = [ hardware-interface cmake-modules control-msgs realtime-tools control-toolbox trajectory-msgs catkin controller-interface urdf actionlib angles roscpp ];

  meta = {
    description = ''Controller for executing joint-space trajectories on a group of joints.'';
    #license = lib.licenses.BSD;
  };
}
