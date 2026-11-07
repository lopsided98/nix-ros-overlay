
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-xmllint, boost, cmake, geometry-msgs, gtsam, launch-testing, launch-testing-ament-cmake, launch-testing-ros, mola-bridge-ros2, mola-common, mola-demos, mola-gtsam-factors, mola-imu-preintegration, mola-kernel, mola-launcher, mrpt-obs, nav-msgs, rclpy, ros-environment, rviz2, sensor-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-mola-state-estimation-smoother";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_state_estimation-release/archive/release/jazzy/mola_state_estimation_smoother/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "8abedbd2b6346fd81267e7410cbec8033de337ffe73bf1e5f952723b15525ec9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gtest ament-cmake-xmllint boost cmake ros-environment ];
  checkInputs = [ ament-cmake-pytest geometry-msgs launch-testing launch-testing-ament-cmake launch-testing-ros mola-bridge-ros2 mola-launcher nav-msgs rclpy sensor-msgs tf2-ros ];
  propagatedBuildInputs = [ gtsam mola-common mola-demos mola-gtsam-factors mola-imu-preintegration mola-kernel mola-launcher mrpt-obs rviz2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gtest cmake ];

  meta = {
    description = "SE(3) pose and twist path data fusion estimator";
    license = with lib.licenses; [ gpl3Only ];
  };
}
