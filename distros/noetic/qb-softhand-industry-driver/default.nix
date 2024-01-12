
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-softhand-industry-srvs, qb-softhand-industry-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-driver";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_driver/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "bc92b13e95b8d3f01836c40a1efc545b2d2d157e88040ed2b8aac625b378fca4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ qb-softhand-industry-srvs qb-softhand-industry-utils roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains communication interface for qbrobotics® SoftHand Industry.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
