
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-softhand-industry-control, qb-softhand-industry-description, qb-softhand-industry-hardware-interface, qb-softhand-industry-utils }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "a23fa40e605cbf4c71a7b24ce43568a5809f3d4d0be21fa2191317f96bec56be";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-softhand-industry-control qb-softhand-industry-description qb-softhand-industry-hardware-interface qb-softhand-industry-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS interface for qbrobotics® SoftHand INdustry device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
