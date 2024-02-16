
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-softhand-industry-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-srvs";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_srvs/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "0ae96f0defe477ecdc683a717ebb354f7d56feab20349a8cfb6c804b2b094231";
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
