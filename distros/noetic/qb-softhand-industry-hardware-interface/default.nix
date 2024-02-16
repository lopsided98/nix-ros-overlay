
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-toolbox, controller-manager, hardware-interface, joint-limits-interface, qb-softhand-industry-msgs, qb-softhand-industry-srvs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-hardware-interface";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_hardware_interface/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "97d585e8d6ee8a5d0868f2c647826271a9f0ef06bf708c9db60574a9bb51877e";
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
