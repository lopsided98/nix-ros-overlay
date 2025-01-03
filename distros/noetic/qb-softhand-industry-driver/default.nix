
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-softhand-industry-srvs, qb-softhand-industry-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-driver";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_driver/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "8dae1b85530da06b1e3212ff6ccccb3398cc57222b78fdd5edc36931533efbd0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-softhand-industry-srvs qb-softhand-industry-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains communication interface for qbrobotics® SoftHand Industry.";
    license = with lib.licenses; [ bsd3 ];
  };
}
