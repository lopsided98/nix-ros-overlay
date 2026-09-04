
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-jazzy-fusioncore-core";
  version = "0.3.8-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/jazzy/fusioncore_core/0.3.8-1.tar.gz";
    name = "0.3.8-1.tar.gz";
    sha256 = "afce37c77e66b1f5f360ee6d3288f37e24a55a1495c89bde12d56fb30a546790";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Pure C++ UKF sensor fusion library underlying FusionCore. Fuses IMU, wheel encoders, GPS, and visual SLAM pose in a 23-state unscented Kalman filter. Includes ECEF GPS conversion, online gyro/accel/encoder bias estimation, adaptive noise covariance, chi-squared outlier gating, ZUPT, and GPS-denied operation. No ROS dependency, usable standalone.";
    license = with lib.licenses; [ asl20 ];
  };
}
