
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, qb-softhand-industry-hardware-interface, qb-softhand-industry-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-control";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_control/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "becb93808886acc18d163aa1146169413ddeb6d7b3dff5ae3101afde3f3c319c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager qb-softhand-industry-hardware-interface qb-softhand-industry-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the ROS control node for qbrobotics® SoftHand INdustry device.";
    license = with lib.licenses; [ bsd3 ];
  };
}
