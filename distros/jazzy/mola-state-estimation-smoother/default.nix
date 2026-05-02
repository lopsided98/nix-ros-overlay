
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, boost, cmake, gtsam, mola-common, mola-gtsam-factors, mola-imu-preintegration, mola-kernel, mola-launcher, mrpt-libobs, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-mola-state-estimation-smoother";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/jazzy/mola_state_estimation_smoother/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "ce8bf1db6503abf4ba606039528a8aaf90e46ec6aa9bcc0e2d762d35ad25db77";
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
