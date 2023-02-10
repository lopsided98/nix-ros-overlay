
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, controller-manager-msgs, rospy, rqt-gui, rqt-gui-py, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-rqt-joint-trajectory-controller";
  version = "0.17.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/rqt_joint_trajectory_controller/0.17.3-1.tar.gz";
    name = "0.17.3-1.tar.gz";
    sha256 = "e8580f11b3502c986a28a16e3b000109aa1f6b7d6fefc9047f539953d028df12";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-msgs controller-manager-msgs rospy rqt-gui rqt-gui-py trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Graphical frontend for interacting with joint_trajectory_controller instances.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
