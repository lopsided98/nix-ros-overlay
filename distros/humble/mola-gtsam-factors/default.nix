
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtsam, mola-common, mrpt-libposes }:
buildRosPackage {
  pname = "ros-humble-mola-gtsam-factors";
  version = "2.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/humble/mola_gtsam_factors/2.4.2-1.tar.gz";
    name = "2.4.2-1.tar.gz";
    sha256 = "8bed680182acf0a636a3c3f53a008b4237ab2ece01163445f44a116125d57cda";
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
