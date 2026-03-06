
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libbase, mrpt-libmath, mrpt-libposes }:
buildRosPackage {
  pname = "ros-humble-gtsam2mrpt-serial";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/humble/gtsam2mrpt_serial/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "9a27687a3ea68e523126c9096a813ec6f405a07bdb255effb48d2d329af2f645";
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
