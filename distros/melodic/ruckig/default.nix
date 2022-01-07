
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-ruckig";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/melodic/ruckig/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "ef894534f065eb3832045a52182ea5c6332629ea4aa95a70cabde82e97922117";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Jerk-constrained. Time-optimal.'';
    license = with lib.licenses; [ mit ];
  };
}
