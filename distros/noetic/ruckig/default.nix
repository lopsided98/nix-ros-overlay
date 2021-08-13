
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-ruckig";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/noetic/ruckig/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "cea3b5576bd9c749f3336703ee6990e24e76859b36fbbab05ed3cd73be5ea852";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Time-optimal. Jerk-constrained.'';
    license = with lib.licenses; [ mit ];
  };
}
