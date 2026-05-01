
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-lyrical-mola-gtsam-factors";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_gtsam_factors/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "5c5275fa727e601f7ca6b5612104c8668b29d9fc7ead3ad242e9d37487654e27";
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
