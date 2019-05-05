
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-qb-hand-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbhand-ros-release/get/release/lunar/qb_hand_description/2.0.0-1.tar.gz;
    sha256 = "88af8e240d47a4e9fe60701e64913307bdb0b2d848bf5c1b0718c273f894151f";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the ROS description for qbrobotics® qbhand device.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
