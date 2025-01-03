
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-description";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_description/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "47ad38e51722395dfd78603bacf298f9befa532445eb39baabd2e76c070cd9dc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the ROS description for qbrobotics® SoftHand INdustry device.";
    license = with lib.licenses; [ bsd3 ];
  };
}
