
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtsam, mola-common, mola-imu-preintegration, mola-kernel, mrpt-libobs }:
buildRosPackage {
  pname = "ros-humble-mola-navstate-fg";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_navstate_fg/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "1e1c1922de0f6aed3a74ede209cf1b781b59a45568bd22c985f27df17e89a96b";
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
