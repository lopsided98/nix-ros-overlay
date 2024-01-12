
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-description";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_description/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "d60108e783fd9a0583721b4989c91c400b29c65919344575b83e814225f22a3c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® SoftHand INdustry device.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
