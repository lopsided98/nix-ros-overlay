
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, controller-manager, hardware-interface, joint-limits-interface, qb-softhand-industry-msgs, qb-softhand-industry-srvs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-hardware-interface";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_hardware_interface/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "521fb29de835669dd478e60ba39bede92993e2987cd906c486440a5bfc397a57";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox controller-manager hardware-interface joint-limits-interface qb-softhand-industry-msgs qb-softhand-industry-srvs roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® SoftHand INdustry device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
