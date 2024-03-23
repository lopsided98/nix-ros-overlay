
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-qb-softhand-industry-description";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros2-release/get/release/humble/qb_softhand_industry_description/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "fb78d854c4e40b9851ded76e91f86d6174911051fd84dc6f24e72f7d9661488b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains the ROS description for qbrobotics® SoftHand INdustry device.";
    license = with lib.licenses; [ bsd3 ];
  };
}
