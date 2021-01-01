
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-multisense-description";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_description/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "9d69ce64ebbd306dca2fd0d020dc363c6acbbe957f28a119f0356ecfde71ed65";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
