
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-ruckig";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/melodic/ruckig/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "feafef442d6c1310e07876e09b570b2f78c096278a1cb6c42e2587e6256abf77";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Time-optimal. Jerk-constrained.'';
    license = with lib.licenses; [ mit ];
  };
}
