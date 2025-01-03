
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-softhand-industry-bringup, qb-softhand-industry-control, qb-softhand-industry-description, qb-softhand-industry-driver, qb-softhand-industry-hardware-interface, qb-softhand-industry-utils }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "634a8fe5e99b52cd7a49b8a7674ac41ff5a47aa3370742c997a379d8c5bbe420";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-softhand-industry-bringup qb-softhand-industry-control qb-softhand-industry-description qb-softhand-industry-driver qb-softhand-industry-hardware-interface qb-softhand-industry-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the ROS interface for qbrobotics® SoftHand INdustry device.";
    license = with lib.licenses; [ bsd3 ];
  };
}
