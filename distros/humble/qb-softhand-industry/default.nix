
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, qb-softhand-industry-description, qb-softhand-industry-driver, qb-softhand-industry-ros2-control }:
buildRosPackage {
  pname = "ros-humble-qb-softhand-industry";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros2-release/get/release/humble/qb_softhand_industry/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "4752fcc6103ddf95badea1d1a33d57f2055419393dc24090c2030ee2b21a955a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ qb-softhand-industry-description qb-softhand-industry-driver qb-softhand-industry-ros2-control ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the ROS interface for qbrobotics® SoftHand INdustry device.";
    license = with lib.licenses; [ bsd3 ];
  };
}
