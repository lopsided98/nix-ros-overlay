
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-softhand-industry-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-srvs";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_srvs/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "9ba47ff27cf74620b5f20d16bbb6e9a304920735237c14a20582e73686668b7d";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime qb-softhand-industry-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS services for qbrobotics® SoftHand Industry.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
