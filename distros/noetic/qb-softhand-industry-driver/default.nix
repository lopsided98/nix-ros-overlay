
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qb-softhand-industry-srvs, qb-softhand-industry-utils, roscpp }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-driver";
  version = "1.0.8-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_driver/1.0.8-3.tar.gz";
    name = "1.0.8-3.tar.gz";
    sha256 = "eeaf81137095e5e50a6f60d6a2dee1aa13814331a84d5884503b7288bd3f9556";
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
