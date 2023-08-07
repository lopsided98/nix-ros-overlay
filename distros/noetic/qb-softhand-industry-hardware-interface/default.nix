
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, hardware-interface, joint-limits-interface, qb-softhand-industry-msgs, qb-softhand-industry-srvs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-hardware-interface";
  version = "1.0.8-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_hardware_interface/1.0.8-3.tar.gz";
    name = "1.0.8-3.tar.gz";
    sha256 = "283c6f5eaff8648bbfc5504297a8de5a562888a16a3393bf1eb29b72b6eb9847";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ control-toolbox hardware-interface joint-limits-interface qb-softhand-industry-msgs qb-softhand-industry-srvs roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the hardware interface for qbrobotics® SoftHand INdustry device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
