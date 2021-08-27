
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-foxy-ruckig";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/foxy/ruckig/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "785ba394167c525a80bae9f9df613c7f3f1d3eda0579e09341bd07ae46088bc3";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Online Trajectory Generation. Real-time. Jerk-constrained. Time-optimal.'';
    license = with lib.licenses; [ mit ];
  };
}
