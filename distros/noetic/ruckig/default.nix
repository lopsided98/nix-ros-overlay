
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-ruckig";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/noetic/ruckig/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "697d2d3be36b7421c946fd48384c72ffdb9d3af191975bccdc5a09b6be9d2ba8";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Jerk-constrained. Time-optimal.'';
    license = with lib.licenses; [ mit ];
  };
}
