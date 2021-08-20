
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-ruckig";
  version = "0.3.3-r3";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/galactic/ruckig/0.3.3-3.tar.gz";
    name = "0.3.3-3.tar.gz";
    sha256 = "875050f81bdef946ec8e2698bba4f5c9e4558b0f058ce9c4eb51d47647ddd5f1";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Time-optimal. Jerk-constrained.'';
    license = with lib.licenses; [ mit ];
  };
}
