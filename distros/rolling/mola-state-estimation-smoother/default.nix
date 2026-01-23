
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, boost, cmake, gtsam, mola-common, mola-gtsam-factors, mola-imu-preintegration, mola-kernel, mola-launcher, mrpt-libobs, ros-environment }:
buildRosPackage {
  pname = "ros-rolling-mola-state-estimation-smoother";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/rolling/mola_state_estimation_smoother/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "d58b8c2f8787e8e136ef11fa7b132684ed593f1d8ff7b1b8d3f01a90dd294088";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint boost cmake ros-environment ];
  propagatedBuildInputs = [ gtsam mola-common mola-gtsam-factors mola-imu-preintegration mola-kernel mola-launcher mrpt-libobs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
