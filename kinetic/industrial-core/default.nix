
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, industrial-deprecated, industrial-utils, catkin, industrial-robot-client, industrial-msgs, simple-message, industrial-trajectory-filters, industrial-robot-simulator }:
buildRosPackage {
  pname = "ros-kinetic-industrial-core";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_core/0.7.0-0.tar.gz;
    sha256 = "9a79ccf3401919d0db73124204c9df3c80dfba29c79730c4bee69fa374e89ee1";
  };

  propagatedBuildInputs = [ industrial-deprecated industrial-utils industrial-robot-client industrial-msgs simple-message industrial-trajectory-filters industrial-robot-simulator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial core stack contains packages and libraries for supporing industrial systems'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
