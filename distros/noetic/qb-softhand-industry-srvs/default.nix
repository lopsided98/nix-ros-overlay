
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, qb-softhand-industry-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-srvs";
  version = "1.0.8-r3";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_srvs/1.0.8-3.tar.gz";
    name = "1.0.8-3.tar.gz";
    sha256 = "71162fc3f7929b4955bb55ae724dde8f8402b5bf1276dcffaf0ad6963799a4c6";
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
