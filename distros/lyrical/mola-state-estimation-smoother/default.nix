
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-xmllint, boost, cmake, geometry-msgs, gtsam, launch-testing, launch-testing-ament-cmake, launch-testing-ros, mola-bridge-ros2, mola-common, mola-gtsam-factors, mola-imu-preintegration, mola-kernel, mola-launcher, mrpt-libobs, nav-msgs, rclpy, ros-environment, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mola-state-estimation-smoother";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/lyrical/mola_state_estimation_smoother/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "2441c6c39365a6a5fd4cca800416dee9bfddac5b3980103c72e26454a887ce45";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint boost cmake ros-environment ];
  checkInputs = [ ament-cmake-pytest geometry-msgs launch-testing launch-testing-ament-cmake launch-testing-ros mola-bridge-ros2 mola-launcher nav-msgs rclpy sensor-msgs tf2-ros ];
  propagatedBuildInputs = [ gtsam mola-common mola-gtsam-factors mola-imu-preintegration mola-kernel mola-launcher mrpt-libobs ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
