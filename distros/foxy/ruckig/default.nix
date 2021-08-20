
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-ruckig";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/foxy/ruckig/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "4a5a860fca44dcda382e07f9e935f9b1e0682637c11478731c89f6a677cb1cd9";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Time-optimal. Jerk-constrained.'';
    license = with lib.licenses; [ mit ];
  };
}
