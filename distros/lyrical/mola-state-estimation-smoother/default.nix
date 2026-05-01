
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-xmllint, boost, cmake, gtsam, mola-common, mola-gtsam-factors, mola-imu-preintegration, mola-kernel, mola-launcher, mrpt-libobs, ros-environment }:
buildRosPackage {
  pname = "ros-lyrical-mola-state-estimation-smoother";
  version = "2.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_state_estimation_smoother/2.2.0-3.tar.gz";
    name = "2.2.0-3.tar.gz";
    sha256 = "8848781a4c41fb0e52e6a5cad5f13d893458274a978ab4d1d6404d324850fe09";
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
