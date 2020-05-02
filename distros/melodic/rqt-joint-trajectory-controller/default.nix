
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, rospy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-joint-trajectory-controller";
  version = "0.16.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/rqt_joint_trajectory_controller/0.16.1-1.tar.gz";
    name = "0.16.1-1.tar.gz";
    sha256 = "c48c4ed42551f04f47eb98d21bb8b028869a97a9ab466f2db8c210f7b3872372";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ control-msgs controller-manager-msgs rospy rqt-gui rqt-gui-py trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
