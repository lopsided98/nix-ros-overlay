
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-msgs";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_msgs/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "16083c6a447b1729d335ab760c5504528717bf0b57a9b8b4ed5f18e25b09a245";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the ROS messages for qbrobotics® SoftHand Industry.";
    license = with lib.licenses; [ bsd3 ];
  };
}
