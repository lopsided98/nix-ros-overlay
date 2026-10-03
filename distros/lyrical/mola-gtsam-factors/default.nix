
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-poses }:
buildRosPackage {
  pname = "ros-lyrical-mola-gtsam-factors";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_gtsam_factors/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "79e80ad19203579a1a2881a7dd5dc25c2328e98679030ee1afd14bcb4db49133";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ gtsam mola-common mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ library with reusable GTSAM Factors useful in georeferencing and state-estimation MOLA modules";
    license = with lib.licenses; [ gpl3Only ];
  };
}
