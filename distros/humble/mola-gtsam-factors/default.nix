
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-humble-mola-gtsam-factors";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/humble/mola_gtsam_factors/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "0853e1a3cb7bb68ba1b37d48a0201d2bd41dece0f293d0bca5dc34d09a7983c9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with reusable GTSAM Factors useful in georeferencing and state-estimation MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
