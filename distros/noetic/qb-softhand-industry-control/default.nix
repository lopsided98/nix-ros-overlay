
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, combined-robot-hw, controller-manager, qb-softhand-industry-hardware-interface, qb-softhand-industry-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-control";
  version = "1.0.8-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_control/1.0.8-3.tar.gz";
    name = "1.0.8-3.tar.gz";
    sha256 = "66ea8d028817dc932afa0033028168773f44f35c8b572d48d0ee306f50250e62";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ combined-robot-hw controller-manager qb-softhand-industry-hardware-interface qb-softhand-industry-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS control node for qbrobotics® SoftHand INdustry device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
