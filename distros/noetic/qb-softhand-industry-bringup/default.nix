
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qb-softhand-industry-bringup";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://bitbucket.org/qbrobotics/qbshin-ros-release/get/release/noetic/qb_softhand_industry_bringup/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "7971ab21eb260341df7280bd83560ca9d9e7743d2ebf25acccdafdad884022fe";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains bringup utilities for qbrobotics® SoftHand Industry.";
    license = with lib.licenses; [ bsd3 ];
  };
}
