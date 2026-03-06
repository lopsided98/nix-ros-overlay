
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libbase, mrpt-libmath, mrpt-libposes }:
buildRosPackage {
  pname = "ros-kilted-gtsam2mrpt-serial";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/kilted/gtsam2mrpt_serial/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "358d5462d4cc596505b5c261f9226966ec0b017859c5ac69a5d4509261e781a1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mrpt-libbase mrpt-libmath mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A C++ library offering a GTSAM ⇆ mrpt-serialization bridge.";
    license = with lib.licenses; [ mit ];
  };
}
