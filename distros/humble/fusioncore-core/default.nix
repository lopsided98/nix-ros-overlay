
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, eigen3-cmake-module }:
buildRosPackage {
  pname = "ros-humble-fusioncore-core";
  version = "0.3.7-r1";

  src = fetchurl {
    url = "https://github.com/manankharwar/fusioncore-release/archive/release/humble/fusioncore_core/0.3.7-1.tar.gz";
    name = "0.3.7-1.tar.gz";
    sha256 = "19c547d4aca69042e1d65b973308ce33ac290dfe13c1a73f65a4b81540072133";
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
