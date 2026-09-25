
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-containers, mrpt-io, mrpt-math, mrpt-poses, mrpt-random, mrpt-rtti, mrpt-serialization, mrpt-system }:
buildRosPackage {
  pname = "ros-rolling-gtsam2mrpt-serial";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gtsam2mrpt_serial-release/archive/release/rolling/gtsam2mrpt_serial/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "1a9498afec5965cf9f99b8716020f5e6b1fa7609dc86ef6a4a095c66dd6ab94a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mrpt-containers mrpt-io mrpt-math mrpt-poses mrpt-random mrpt-rtti mrpt-serialization mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A C++ library offering a GTSAM ⇆ mrpt-serialization bridge.";
    license = with lib.licenses; [ mit ];
  };
}
