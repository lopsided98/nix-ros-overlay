
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtsam, mola-common, mola-imu-preintegration, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-rolling-mola-navstate-fg";
  version = "1.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_navstate_fg/1.1.3-1.tar.gz";
    name = "1.1.3-1.tar.gz";
    sha256 = "c8265d4350eeb7d00c54e44c978736de34062b05bbcf5c852162b179ea1ac510";
  };

  buildType = "cmake";
  buildInputs = [ boost cmake gtsam ];
  propagatedBuildInputs = [ mola-common mola-imu-preintegration mola-kernel mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
