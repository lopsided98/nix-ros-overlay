
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-ruckig";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/galactic/ruckig/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "32c85422bd3c65121de820ae9ae7a3ae717442a8a67439f83fe73817052e21d6";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Jerk-constrained. Time-optimal.'';
    license = with lib.licenses; [ mit ];
  };
}
